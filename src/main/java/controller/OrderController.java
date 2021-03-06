package controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import logic.Cart;
import logic.ItemSet;
import logic.Orderlist;
import logic.ShopService;
import logic.User;

@Controller
@RequestMapping("order")
public class OrderController {
	@Autowired
	private ShopService service;

	/*
	 * @GetMapping("*") // get으로 들어온 요청중 정해진게 없으면 이걸로 실행? public String form(Model
	 * model) { return null; // null : url로 보고 이동? }
	 */
	@ResponseBody
	@RequestMapping("order")
	public ModelAndView order(HttpSession session, Integer oitemnum, Integer oquantity, Integer oprice) { // 핵심로직
		ModelAndView mav = new ModelAndView();
		mav.addObject("orderlist", new Orderlist());

		User user = (User) session.getAttribute("loginUser");

		if (oitemnum == null) { // 카트에서 구매
			System.out.println("&&&&&호출 1");
			if (user != null) { // 로그인 후 
				System.out.println("&&&&&호출 2"); 
				List<ItemSet> cartlist = service.cartview(user.getUserid());
				for (ItemSet i : cartlist) {
					i.setItem(service.itemdetail(i.getItemnum()));
				}
				
				mav.addObject("orderitem", cartlist);
			}
		} else { // 바로 구매
			System.out.println("&&&&&호출 3");
			ItemSet i = new ItemSet();
			i.setItemnum(oitemnum);
			i.setItem(service.itemdetail(oitemnum));
			i.setQuantity(oquantity);
			i.setPrice(oprice);
			List<ItemSet> directlist = new ArrayList<ItemSet>();
			directlist.add(i);
			mav.addObject("orderitem", directlist);
		}
		System.out.println("&&&&&호출 4");
		return mav;
	}

	@PostMapping("order")
	public ModelAndView order(@Valid Orderlist orderlist, BindingResult bresult, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			return mav;
		}
		try {	
			User user = (User) session.getAttribute("loginUser");

			SimpleDateFormat format = new SimpleDateFormat("yyMMdd");
			Date currentTime = new Date();
			System.out.println(currentTime);
			String num = format.format(currentTime);
			double rand = Math.random();
			rand = (int) (rand * 10000000) + 1;
			orderlist.setOrderno(num + "" + rand);

			service.checkend(orderlist); // orderlist 데이터 넣
			// service.insertorderitem();

			mav.addObject("orderlist", orderlist);
			System.out.println("!!!!!!!"+orderlist);
			if (user != null) {
				System.out.println("!@@@@@@@@@@@@@호출");
				for (ItemSet s : orderlist.getOrderitem()) {
					service.insertorderitem(s.getItem().getItemnum(), num + "" + rand, s.getQuantity(), s.getPrice(),
							orderlist.getUserid());
				}
				service.deletecart(user.getUserid());

			} else {
				System.out.println("!@@@@@@@@@@@@@호출2");
				Cart cart = (Cart) session.getAttribute("CART");
				if (cart == null) {
					System.out.println("!@@@@@@@@@@@@@호출3");
					for (ItemSet s : orderlist.getOrderitem()) {
						service.insertorderitem(s.getItem().getItemnum(), num + "" + rand, s.getQuantity(), s.getPrice(),
								orderlist.getUserid());
					}
					service.deletecart(orderlist.getUserid());
				} else { // 로그인 X - 카트 구매 애만되네
					System.out.println("!@@@@@@@@@@@@@호출4");
					for (ItemSet s : cart.getItemSetList()) {
						service.insertorderitem(s.getItem().getItemnum(), num + "" + rand, s.getQuantity(),
								s.getPrice(), orderlist.getUserid());
					}
					long total = cart.getTotal(); // 주문상품의 총 금액 리턴
					session.removeAttribute("CART"); // 장바구니 내용 제거
					mav.addObject("total", total);
				}
			
			}

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		mav.setViewName("order/orderchk");
		return mav;
		
	
	}
}
