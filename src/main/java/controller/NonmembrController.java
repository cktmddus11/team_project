package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import logic.Orderlist;
import logic.ShopService;
@Controller
@RequestMapping("nonmember")
public class NonmembrController {
	
	@Autowired
	private ShopService service;
	
	@GetMapping("*") // get���� ���� ��û�� �������� ������ �̰ɷ� ����?
	public ModelAndView form() {
		ModelAndView mav = new ModelAndView();
		Orderlist orderlist = new Orderlist();
		mav.addObject("orderlist", orderlist);
		return mav;
	}
	// �ֹ� ���� �ִ� ���� Ȯ�� �� boolean Ÿ������ ����
	
	@PostMapping("orderCheck")
	@ResponseBody
	public boolean orderCheck(Orderlist orderlist) {
		System.out.println(orderlist);
		if(service.orderCheck(orderlist)) {
			return true;
		}
		return false;
	}
	// �ֹ������� ���� �� �ֹ� ���������ִ°�
	@PostMapping("orderlist")
	public ModelAndView orderlist(Orderlist orderlist) {
		ModelAndView mav = new ModelAndView();
		
		
		
		return mav;
	}
}
