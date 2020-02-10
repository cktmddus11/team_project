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
			service.adminInsert(user,request); //insert ����
			mav.addObject("msg","�������� ������ �ʿ��� �ŷ��Դϴ�.");
			mav.addObject("url","manager_index.store");
			mav.setViewName("alert");
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
				throw new LoginException("�ش� ���̵� �����ϴ�. �α��� �� �̿��ϼ���","manager_login.store");
			}
			if(	dbUser.getAccess() == 0) {
				mav.addObject("msg","�����ڰ� �ƴմϴ�. ȸ������ �� �̿����ּ���.");
				mav.addObject("url","manager_login.store");
				mav.setViewName("alert");
			}else{ 
				String id = CipherUtil.makehash(dbUser.getUserid());
				String passwd= CipherUtil.decrypt(dbUser.getPassword(),id.substring(0,16)); //�α��� �õ� ��ȣȭ �� ��й�ȣ�� ��ȣȭ��Ų��.
				System.out.println(passwd);
				if(!user.getPassword().equals(passwd)) { //��й�ȣ�� Ʋ���� ��
					bresult.reject("error.login.password");
					return mav; 
				}else { //��й�ȣ ����
					session.setAttribute("loginUser", dbUser); //session���� dbUser�� ������ loginUser�� �����Ѵ�.
					mav.setViewName("redirect:manager_index.store");
				}
			}
		}catch (LoginException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return mav;
	}
	
	@RequestMapping("logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:manager_index.store";
	}
	
	@RequestMapping("manager") //������������ ������ ���� ������
	public ModelAndView manager(Integer access, String userid, HttpSession session) {
		// HttpServletRequest request
		ModelAndView mav = new ModelAndView();
		List<User> entrylist = service.userList(1); 
		mav.addObject("entrylist", entrylist);	
			try {
				if(access == 1) { //�Ķ���Ͱ��� 1�̸� => ����
					service.membercodeUpdate(access, userid);
					mav.addObject("msg","���� ó���� �Ϸ�Ǿ����ϴ�.");
					mav.addObject("url","manager.store");
					mav.setViewName("alert");
				}else if(access == 2){ //�Ķ���Ͱ��� 2�̸� => �ź�
					service.userDelete(userid);
					mav.addObject("msg","�ź� ó���� �Ϸ�Ǿ����ϴ�.");
					mav.addObject("url","manager.store");
					mav.setViewName("alert");
				}	
			}catch(NumberFormatException e) {
				e.printStackTrace();
			}catch(Exception e) {
				e.printStackTrace();
			}	
		return mav;	
	}
	@RequestMapping("manager_list") //������������ ������ ���� ������
	public ModelAndView manager_list(Integer access, String userid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		List<User> adminlist = service.userList(2);
		mav.addObject("adminlist", adminlist);
		return mav;
	}
	@RequestMapping("manager_info")
	public ModelAndView manager_info(String userid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User admin = service.getUser(userid);
		mav.addObject("admin",admin);
		return mav;
	}
	
	@GetMapping("manager_update")
	public ModelAndView manager_update(String userid, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = service.getUser(userid);
		try {
			String id = CipherUtil.makehash(user.getUserid());
		    String password = CipherUtil.decrypt(user.getPassword(), id.substring(0,16));
		    user.setPassword(password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.addObject("user",user);
		return mav;
	}
	
	// ��й�ȣ ���� : �Էµ� ��й�ȣ�� db�� ����� ��й�ȣ�� ��
	// ��ġ : update
	// error.login.password=��й�ȣ�� Ȯ���ϼ���.
	@PostMapping("manager_update")
	public ModelAndView manager_update(@Valid User user, 
			BindingResult bresult, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if(bresult.hasErrors()) {
			bresult.reject("error.input.user");
			return mav;
		}
		User loginUser = (User)session.getAttribute("loginUser");
		String hashpass;
		try {
			hashpass = CipherUtil.makehash(user.getPassword());
			user.setPassword(hashpass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(!user.getPassword().equals(loginUser.getPassword())) {
			bresult.reject("error.login.password");
			return mav;
		}
		service.adminUpdate(user); 
		return mav;
	}
}