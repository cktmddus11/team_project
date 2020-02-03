package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("mypage")
public class MypageController {
	// 로그인 했는지 확인하는 절차 필요
	@RequestMapping("myindex")
	public ModelAndView checkindex(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	@RequestMapping("cart")
	public ModelAndView cart(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		return mav;
	}

}
