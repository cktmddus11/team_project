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
	 * @GetMapping("*") // get���� ���� ��û�� �������� ������ �̰ɷ� ����? public String form(Model
	 * model) { return null; // null : url�� ���� �̵�? }
	 */
	@ResponseBody
	@RequestMapping("order")
	public ModelAndView order(HttpSession session, Integer oitemnum, Integer oquantity, Integer oprice) { // �ٽɷ���
		ModelAndView mav = new ModelAndView();
		mav.addObject("orderlist", new Orderlist());

		User user = (User) session.getAttribute("loginUser");

		if (oitemnum == null) { // īƮ���� ����
			System.out.println("&&&&&ȣ�� 1");
			if (user != null) { // �α��� �� 
				System.out.println("&&&&&ȣ�� 2"); 
				List<ItemSet> cartlist = service.cartview(user.getUserid());
				for (ItemSet i : cartlist) {
					i.setItem(service.itemdetail(i.getItemnum()));
				}
				
				mav.addObject("orderitem", cartlist);
			}
		} else { // �ٷ� ����
			System.out.println("&&&&&ȣ�� 3");
			ItemSet i = new ItemSet();
			i.setItemnum(oitemnum);
			i.setItem(service.itemdetail(oitemnum));
			i.setQuantity(oquantity);
			i.setPrice(oprice);
			List<ItemSet> directlist = new ArrayList<ItemSet>();
			directlist.add(i);
			mav.addObject("orderitem", directlist);
		}
		System.out.println("&&&&&ȣ�� 4");
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

			service.checkend(orderlist); // orderlist ������ ��
			// service.insertorderitem();

			mav.addObject("orderlist", orderlist);
			System.out.println("!!!!!!!"+orderlist);
			if (user != null) {
				System.out.println("!@@@@@@@@@@@@@ȣ��");
				for (ItemSet s : orderlist.getOrderitem()) {
					service.insertorderitem(s.getItem().getItemnum(), num + "" + rand, s.getQuantity(), s.getPrice(),
							orderlist.getUserid());
				}
				service.deletecart(user.getUserid());

			} else {
				System.out.println("!@@@@@@@@@@@@@ȣ��2");
				Cart cart = (Cart) session.getAttribute("CART");
				if (cart == null) {
					System.out.println("!@@@@@@@@@@@@@ȣ��3");
					for (ItemSet s : orderlist.getOrderitem()) {
						service.insertorderitem(s.getItem().getItemnum(), num + "" + rand, s.getQuantity(), s.getPrice(),
								orderlist.getUserid());
					}
					service.deletecart(orderlist.getUserid());
				} else { // �α��� X - īƮ ���� �ָ��ǳ�
					System.out.println("!@@@@@@@@@@@@@ȣ��4");
					for (ItemSet s : cart.getItemSetList()) {
						service.insertorderitem(s.getItem().getItemnum(), num + "" + rand, s.getQuantity(),
								s.getPrice(), orderlist.getUserid());
					}
					long total = cart.getTotal(); // �ֹ���ǰ�� �� �ݾ� ����
					session.removeAttribute("CART"); // ��ٱ��� ���� ����
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
