package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("mypage")
public class MypageController {
	@RequestMapping("*") // get으로 들어온 요청중 정해진게 없으면 이걸로 실행?
	public String form(Model model) {
		return null; // null : url로  보고 이동?
	}
/*	@RequestMapping("myindex")
	public String myindex(HttpSession session) {
		
		
	}*/

}
