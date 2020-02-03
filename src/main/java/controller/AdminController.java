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
		//upload : ���ε�� �̹��� ���� ����. �̹��� ����.
		String path=request.getServletContext().getRealPath("/")+ "admin/imgfile/";
		File f = new File(path);
		if(!f.exists()) f.mkdirs();
		if(!upload.isEmpty()) {
			//���ε�� ������ ������ File ��ü ����
			File file = new File(path, upload.getOriginalFilename());
			try {
				upload.transferTo(file); //���ε� ���� ����
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		String fileName = "/kakaofriends/admin/imgfile/"+upload.getOriginalFilename();
		model.addAttribute("fileName", fileName);
		return "fileName";  
	}
	//������ ȸ������
	@PostMapping("manager_Entry")
	public ModelAndView userEntry(@Valid User user, BindingResult bresult, HttpServletRequest request) throws Exception{
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			bresult.reject("error.input.user"); //�Է������� ������ �ֽ��ϴ�.
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {
			String id = CipherUtil.makehash(user.getUserid()).substring(0,16); //key
			String passwd = CipherUtil.encrypt(user.getPassword(), id);
			user.setPassword(passwd);
			service.memberInsert2(user,request); //insert ����
			mav.addObject("msg","�������� ������ �ʿ��մϴ�.");
			mav.addObject("url","manager_index.store");
			mav.setViewName("alert");
			/*mav.setViewName("redirect:manager_index.store");*/
		   }catch(DataIntegrityViolationException e) {
				e.printStackTrace();
				bresult.reject("error.duplicate.user"); //�ߺ��� ���̵��Դϴ�.
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
			if(dbUser == null) { //���̵� ������
				throw new LoginException("�ش� ���̵� �����ϴ�.","");
			}
			if(!dbUser.getUserid().equals("admin")) { //���̵� üũ
				mav.addObject("msg","�����ڰ� �ƴմϴ�.");
				mav.addObject("url","manager_login.store");
				mav.setViewName("alert");
			}else{ //id�� admin�̾�!
				String id = CipherUtil.makehash(dbUser.getUserid());
				String passwd= CipherUtil.decrypt(dbUser.getPassword(),id.substring(0,16)); //�α��� �õ� ��ȣȭ �� ��й�ȣ�� ��ȣȭ��Ų��.
				System.out.println(passwd);
				if(!user.getPassword().equals(passwd)) { //�ٵ� ��й�ȣ�� Ʋ��
					bresult.reject("error.login.password");
					return mav; 
				}else { //��й�ȣ ����
					session.setAttribute("loginUser", dbUser); //session���� dbUser�� ������ loginUser��� �̸����� �����Ѵ�.
					mav.setViewName("redirect:manager_index.store"); //������������ �̵��ϸ鼭 ����ŸƮ��Ų��.
				}
			}
		}catch(LoginException e) {
			e.printStackTrace();
			mav.addObject("msg","�ش� ���̵� �����ϴ�. ȸ������ �� �̿��ϼ���");
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
	@RequestMapping("manager") //������������ ������ ���� ������
	public ModelAndView manager(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<User> entrylist = service.userList();
		mav.addObject("entrylist", entrylist);
		return mav;
	}
}