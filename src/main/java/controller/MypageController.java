package controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.Chg;
import logic.ShopService_cyj;

@Controller
@RequestMapping("mypage")
public class MypageController {
	@Autowired
	public ShopService_cyj service;
	
	@GetMapping("*") 
	public String form(Model model) {
		return null; 
	}
	@GetMapping("change_return_order")
	   public ModelAndView getChg(@ModelAttribute Chg chg,Integer chg_no, HttpServletRequest request) {
	      ModelAndView mav = new ModelAndView();
	      if(chg_no == null) {
	    	  chg = new Chg();
	      }else {
	    	  chg =service.Chg(chg_no,request);
	      }
	      mav.addObject("chg", chg);
	      return mav;
	   }
	@PostMapping("change_return_order")
	   public ModelAndView change_return_order(@Valid Chg chg, BindingResult bresult, HttpServletRequest request) {
	      ModelAndView mav = new ModelAndView();
	      if(bresult.hasErrors()) {
	         mav.getModel().putAll(bresult.getModel());
	         System.out.println(bresult);
	         return mav;
	      }
	      service.ChgCreate(chg,request);
	      mav.setViewName("redirect:mypage/orderlistpage.store");
	      return mav;
	   }

}
