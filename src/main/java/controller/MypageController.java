package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("mypage")
public class MypageController {
	@RequestMapping("*") // get���� ���� ��û�� �������� ������ �̰ɷ� ����?
	public String form(Model model) {
		return null; // null : url��  ���� �̵�?
	}
/*	@RequestMapping("myindex")
	public String myindex(HttpSession session) {
		
		
	}*/

}
