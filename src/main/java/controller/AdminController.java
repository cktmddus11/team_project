package controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import exception.LoginException;
import logic.ShopService;
import logic.User;
import util.CipherUtil;

@Controller
@RequestMapping("admin")
public class AdminController {
	@Autowired
	private ShopService service;
	@GetMapping("*") 
	public String form(Model model) {
		model.addAttribute(new User());
		return null; 
	}
	@RequestMapping("imgupload")
	public String imgupload(MultipartFile upload, HttpServletRequest request, Model model) {
		//upload : 업로드된 이미지 정보 저장. 이미지 파일.
		String path=request.getServletContext().getRealPath("/")+ "admin/imgfile/";
		File f = new File(path);
		if(!f.exists()) f.mkdirs();
		if(!upload.isEmpty()) {
			//업로드될 파일을 저장할 File 객체 지정
			File file = new File(path, upload.getOriginalFilename());
			try {
				upload.transferTo(file); //업로드 파일 생성
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		String fileName = "/kakaofriends/admin/imgfile/"+upload.getOriginalFilename();
		model.addAttribute("fileName", fileName);
		return "fileName";  
	}
	//관리자 회원가입
	@PostMapping("manager_Entry")
	public ModelAndView userEntry(@Valid User user, BindingResult bresult, HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			bresult.reject("error.input.user"); //입력정보에 문제가 있습니다.
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			String id = CipherUtil.makehash(user.getUserid()).substring(0,16); //key
			String passwd = CipherUtil.encrypt(user.getPassword(), id);
			user.setPassword(passwd);
			service.memberInsert2(user,request); //insert 실행
			mav.addObject("msg","관리자의 승인이 필요합니다.");
			mav.addObject("url","manager_index.store");
			mav.setViewName("alert");
			/*mav.setViewName("redirect:manager_index.store");*/
		   }catch(DataIntegrityViolationException e) {
				e.printStackTrace();
				bresult.reject("error.duplicate.user"); //중복된 아이디입니다.
			}catch (Exception e) {
				e.printStackTrace();
			} 
		
		return mav;
	}
	
	@PostMapping("manager_login")
	public ModelAndView login(@Valid User user, BindingResult bresult,HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) { 
			bresult.reject("error.input.user");
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			User dbUser = service.getUser(user.getUserid());
			if(dbUser == null) { //아이디가 없을때
				throw new LoginException("해당 아이디가 없습니다.","");
			}
			if(!dbUser.getUserid().equals("admin")) { //아이디 체크
				mav.addObject("msg","관리자가 아닙니다.");
				mav.addObject("url","manager_login.store");
				mav.setViewName("alert");
			}else{ //id가 admin이야!
				String id = CipherUtil.makehash(dbUser.getUserid());
				String passwd= CipherUtil.decrypt(dbUser.getPassword(),id.substring(0,16)); //로그인 시도 암호화 된 비밀번호를 복호화시킨다.
				System.out.println(passwd);
				if(!user.getPassword().equals(passwd)) { //근데 비밀번호를 틀림
					bresult.reject("error.login.password");
					return mav; 
				}else { //비밀번호 맞음
					session.setAttribute("loginUser", dbUser); //session값에 dbUser의 정보를 loginUser라는 이름으로 저장한다.
					mav.setViewName("redirect:manager_index.store"); //메인페이지로 이동하면서 리스타트시킨다.
				}
			}
		}catch(LoginException e) {
			e.printStackTrace();
			mav.addObject("msg","해당 아이디가 없습니다. 회원가입 후 이용하세요");
			mav.addObject("url","manager_Entry.store");
			mav.setViewName("alert");
			/* bresult.reject("error.login.id"); */
		}
		return mav;
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:manager_index.store";
	}
	/*
	 * @PostMapping("manager") public String manager(User user) { ModelAndView mav =
	 * new ModelAndView(); return mav; }
	 */
	@RequestMapping("manager") //상위관리자의 관리자 승인 페이지
	public ModelAndView manager(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<User> entrylist = service.userList();
		mav.addObject("entrylist", entrylist);
		return mav;
	}
}