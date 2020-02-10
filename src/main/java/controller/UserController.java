package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.JsonNode;

import exception.LoginException;
import logic.Point;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private ShopService service;
	
	@RequestMapping("*")
	public String form(Model model) {
		return null; // null : url��  ���� �̵�?
	}

	@RequestMapping("signin")
	public ModelAndView loginForm(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		/* �׾Ʒ� ���� URL�� �����ϱ� ���Ͽ� getAuthorizationUrl�� ȣ�� */
		// īī�� �α��� ȭ���̷� �̵��ϴ� �ּҰ� �����ϴ� �Լ� ȣ��
		String kakaoUrl = KakaoController.getAuthorizationUrl(session);

		/* ������ ���� URL�� View�� ���� */
		mav.setViewName("user/signin");
		mav.addObject("kakao_url", kakaoUrl);

		return mav;
	}

	@RequestMapping("login")
	public ModelAndView kakaoLogin(@RequestParam("code") String code, HttpServletRequest request,
			HttpServletResponse response, HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		// ������� node�� �����
		JsonNode node = KakaoController.getAccessToken(code);
		// accessToken�� ������� �α����� ��� ������ �������
		JsonNode accessToken = node.get("access_token");
		// ������� ����
		JsonNode userInfo = KakaoController.getKakaoUserInfo(accessToken);
		System.out.println(userInfo);
		String kemail = null;
		String kname = null;
		String kgender = null;
		String kbirthday = null;
		String kage = null;
		String kimage1 = null;
		String kimage2 = null;
		// �������� īī������ �������� Get properties
		JsonNode properties = userInfo.path("properties");
		JsonNode kakao_account = userInfo.path("kakao_account");
		JsonNode jsonprofile = kakao_account.path("profile");

		kemail = kakao_account.path("email").asText();
		kname = properties.path("nickname").asText();
		kimage1 = jsonprofile.path("thumbnail_image_url").asText();
		kimage2 = jsonprofile.path("profile_image_url").asText();
		kgender = kakao_account.path("gender").asText();
		kbirthday = kakao_account.path("birthday").asText();
		kage = kakao_account.path("age_range").asText();
		session.setAttribute("kemail", kemail);
		session.setAttribute("kname", kname);
		session.setAttribute("kimage1", kimage1);
		session.setAttribute("kimage2", kimage2);
		session.setAttribute("kgender", kgender);
		session.setAttribute("kbirthday", kbirthday);
		session.setAttribute("kage", kage);
		// ���ǿ� ��ū ����
		session.setAttribute("access_Token", accessToken);
		mav.setViewName("redirect:../index.store"); // ../index
		
		User user = new User();
		user.setUserid(kemail);
		user.setUsername(kname);
		user.setGender(kgender.equals("male")?1:2);
		user.setMember_code(1); // ȸ�� 1
		session.setAttribute("loginUser", user);
		if(!service.selectOne(kemail)) { 
			// false�� ���� �α������� ����� ������ db������
			service.memberInsert(user);
			Point p = new Point();
			p.setUserid(user.getUserid());
			p.setPoint(1000); // welcome point
			p.setPointtext("Welcome Point!");
			service.pointinsert(p);
		}
		return mav;
	}
	
	
	@RequestMapping("logout") // value="/logout
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		try {
			
			JsonNode node = KakaoController.kakaoLogout(session.getAttribute("access_Token").toString());
			session.invalidate();
			System.out.println("�α��� �� ��ȯ�Ǵ� ���̵� : " + node.get("id"));
			
		} catch (Exception e) {
			e.printStackTrace();
			throw new LoginException("�̹� �α׾ƿ��� �����Դϴ�", "../index.store");
		}
		
		mav.setViewName("redirect:../index.store");
		return mav;
	}

	@RequestMapping("updateForm") // ���� �����ϱ�
	public String kakaoupdateform(HttpSession session) {

		// KakaoController.kakaoupdate(accessToken);
		return "user/updateForm";
	}

	@PostMapping("update")
	public String kakaoupdate(String nickname, String gender, HttpSession session) throws UnsupportedEncodingException {
		JsonNode accessToken = (JsonNode) session.getAttribute("access_Token");
		JsonNode userid = KakaoController.kakaoupdate(nickname, gender, accessToken);
		System.out.println("������ ����� ���̵� : " + userid.get("id"));
		return "redirect:../index.store";
	}

}
