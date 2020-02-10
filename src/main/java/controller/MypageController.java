package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import exception.AddressException;
import exception.CartEmptyException;
import logic.Addr;
import logic.Cart;
import logic.Chg;
import logic.Item;
import logic.ItemSet;
import logic.Orderlist;
import logic.Point;
import logic.ShopService;
import logic.User;
import logic.WishList;

@Controller
@RequestMapping("mypage")
public class MypageController {
	@Autowired
	private ShopService service;

	@RequestMapping("*") // get���� ���� ��û�� �������� ������ �̰ɷ� ����?
	public String form() {

		return null;
	}

	// �α��� �ߴ��� Ȯ���ϴ� ���� �ʿ�
	@RequestMapping("myindex")
	public ModelAndView checkindex(String id, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String kemail = (String) session.getAttribute("kemail");
		int count_all = service.count_status(kemail, null);
		int count_receive = service.count_status(kemail, "receive");
		int count_reorder = service.count_status(kemail, "re-order");
		int count_inshipping = service.count_status(kemail, "in-shipping");
		int count_point = service.totalpoint(kemail);
		List<Orderlist> orderlist = service.orderlist_my_small(kemail);
		mav.addObject("orderlist", orderlist);
		mav.addObject("count_all", count_all);
		mav.addObject("count_receive", count_receive);
		mav.addObject("count_receive", count_receive);
		mav.addObject("count_reorder", count_reorder);
		mav.addObject("count_inshipping", count_inshipping);
		mav.addObject("count_point", count_point);
		return mav;

	}

	@RequestMapping("cart")
	public ModelAndView cart(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User user = (User) session.getAttribute("loginUser");
		if (user == null) {
			Cart cart = (Cart) session.getAttribute("CART");
			/*
			 * if (cart == null || cart.getItemSetList().size() == 0) { throw new
			 * CartEmptyException("��ٱ��Ͽ� ��ǰ�� �����ϴ�.", "../item/list.shop"); }
			 */
			mav.addObject("cart", cart);
			//System.out.println("��ٱ���!!!"+cart.getItemSetList());
		} else {
			List<ItemSet> cartlist = service.cartview(user.getUserid());
			for (ItemSet i : cartlist) {
				i.setItem(service.itemdetail(i.getItemnum()));
			}
			mav.addObject("cartdb", cartlist);
		}

		return mav;
	}

	@ResponseBody
	@RequestMapping(value="cartdelete", produces = "application/text; charset=utf8") 
	public String cartdelete(int itemnum, String itemname, int index, HttpSession session) {
		User user = (User) session.getAttribute("loginUser");
		try {
			Item item = new Item();
			item.setItemnum(itemnum);
			item.setItemname(itemname);
			if (user == null) {
				Cart cart = (Cart) session.getAttribute("CART");
				ItemSet itemSet = cart.getItemSetList().remove(index);
				System.out.println(itemSet);
				return item.getItemname() + "�� ��ٱ��Ͽ��� �����Ͽ����ϴ�";

			} else {
				ItemSet itemSet = new ItemSet(item, user.getUserid(), 0, 0);
				service.cartdelete(itemSet);
				return item.getItemname() + "�� ��ٱ��Ͽ��� �����Ͽ����ϴ�";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return "��ٱ��Ͽ� ���� ��ǰ ������ �����Ͽ����ϴ�";
		}
	}

	@RequestMapping("wishlist")
	public ModelAndView wishlist(Integer pageNum, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String kemail = (String) session.getAttribute("kemail");
		int limit = 10; // �������� �Խù� �� ��
		if (pageNum == null || pageNum == 0) {
			pageNum = 1;
		}

		int wishlistcount = service.wishlistcount(kemail); // ��ü ��ϵ� �Խù� �� ��
		List<WishList> wishlist = service.wishlist(kemail, pageNum, limit);
		// �ִ� ������
		int maxpage = (int) ((double) wishlistcount / limit + 0.95);
		// �������� ù��° ������
		int startpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
		// �������� ������ ������
		int endpage = startpage + 9;
		if (endpage > maxpage)
			endpage = maxpage;
		// ȭ�鿡 ��µǴ� �Խù� ��ȣ
		int boardno = wishlistcount - (pageNum - 1) * limit;
		mav.addObject("pageNum", pageNum);
		mav.addObject("maxpage", maxpage);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("wishlistcount", wishlistcount);
		mav.addObject("wishlist", wishlist);
		mav.addObject("boardno", boardno);
		return mav;
	}

	@RequestMapping("wishlist_delete")
	public ModelAndView wishlist_delete(Integer pickno, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String kemail = (String) session.getAttribute("kemail");
		service.WishListDelete(pickno);
		mav.setViewName("redirect:wishlist.store");
		return mav;
	}

	@RequestMapping("pointlist")
	public ModelAndView checkpointlist(Integer pageNum, HttpServletRequest request, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String kemail = (String) session.getAttribute("kemail");
		int limit = 10; // �������� �Խù� �� ��
		if (pageNum == null || pageNum == 0) {
			pageNum = 1;
		}
		int pointlistcount = service.pointlistcount(kemail); // ��ü ��ϵ� �Խù� �� ��
		int totalpoint = service.totalpoint(kemail); // ��ü ��ϵ� �Խù� �� ��
		List<Point> pointlist = service.pointlist(kemail, pageNum, limit);
		// �ִ� ������
		int maxpage = (int) ((double) pointlistcount / limit + 0.95);
		// �������� ù��° ������
		int startpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
		// �������� ������ ������
		int endpage = startpage + 9;
		if (endpage > maxpage)
			endpage = maxpage;
		// ȭ�鿡 ��µǴ� �Խù� ��ȣ
		int boardno = pointlistcount - (pageNum - 1) * limit;
		mav.addObject("pageNum", pageNum);
		mav.addObject("maxpage", maxpage);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("pointlistcount", pointlistcount);
		mav.addObject("pointlist", pointlist);
		mav.addObject("totalpoint", totalpoint);
		return mav;
	}

	@GetMapping("orderupdate")
	public ModelAndView GetOrderupdate(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Addr addr = null;
		String kemail = (String) session.getAttribute("kemail");
		addr = service.AddressSelect(kemail);
		mav.addObject("addr", addr);
		return mav;
	}

	@PostMapping("orderupdate")
	public ModelAndView PostOrderupdate(@ModelAttribute("addr") @Valid Addr addr, BindingResult bresult,
			HttpSession session) {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			System.out.println(bresult);
			return mav;
		}
		try {
			String kemail = (String) session.getAttribute("kemail");
			service.AddressUpdate(kemail, addr.getAddress(), addr.getRestaddress());
		} catch (Exception e) {
			e.printStackTrace();
			throw new AddressException("�ּҵ�� �����߽��ϴ�.", "orderupdate.store");
		}
		mav.setViewName("redirect:myindex.store");
		return mav;
	}

	@RequestMapping("orderlistpage")
	public ModelAndView checkorderlistpage(Integer pageNum, String status, String selectvalue, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		int limit = 10; // �������� �Խù� �� ��
		Integer orderstate = null;
		if (pageNum == null || pageNum == 0) {
			pageNum = 1;
		}
		if (selectvalue == null || selectvalue.toString().equals("��ü")) {
			orderstate = null;
		} else if (selectvalue.toString().equals("�̰���")) {
			orderstate = 0;
		} else if (selectvalue.toString().equals("����Ȯ��")) {
			orderstate = 1;
		} else if (selectvalue.toString().equals("����غ���")) {
			orderstate = 2;
		} else if (selectvalue.toString().equals("�����")) {
			orderstate = 3;
		} else if (selectvalue.toString().equals("��ۿϷ�")) {
			orderstate = 4;
		} else if (selectvalue.toString().equals("�ֹ�Ȯ��")) {
			orderstate = 5;
		} else if (selectvalue.toString().equals("��ǰ/��ȯ")) {
			orderstate = 6;
		} else if (selectvalue.toString().equals("���")) {
			orderstate = 7;
		}
		String kemail = (String) session.getAttribute("kemail");
		int orderlist_my_count = service.orderlist_my_count(kemail, status, orderstate);
		List<Orderlist> orderlist_my = service.orderlist_my(kemail, status, orderstate, pageNum, limit);
		int maxpage = (int) ((double) orderlist_my_count / limit + 0.95);
		// �������� ù��° ������
		int startpage = (int) ((pageNum / 10.0 + 0.9) - 1) * 10 + 1;
		// �������� ������ ������
		int endpage = startpage + 9;
		if (endpage > maxpage)
			endpage = maxpage;
		// ȭ�鿡 ��µǴ� �Խù� ��ȣ
		int boardno = orderlist_my_count - (pageNum - 1) * limit;
		mav.addObject("pageNum", pageNum);
		mav.addObject("maxpage", maxpage);
		mav.addObject("startpage", startpage);
		mav.addObject("endpage", endpage);
		mav.addObject("orderlist_my", orderlist_my);
		mav.addObject("orderlist_my_count", orderlist_my_count);
		mav.addObject("selectvalue", selectvalue);
		return mav;
	}

	@GetMapping("change_return_order")
	public ModelAndView getChg(@ModelAttribute Chg chg, Integer chg_no, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		if (chg_no == null) {
			chg = new Chg();
		} else {
			chg = service.Chg(chg_no, request);
		}
		mav.addObject("chg", chg);
		return mav;
	}

	@PostMapping("change_return_order")
	public ModelAndView change_return_order(@Valid Chg chg, BindingResult bresult, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		if (bresult.hasErrors()) {
			mav.getModel().putAll(bresult.getModel());
			System.out.println(bresult);
			return mav;
		}

		service.ChgCreate(chg, request);
		mav.setViewName("redirect:orderlistpage.store?status=re-order");
		return mav;
	}

	@GetMapping("ordernum")
	public ModelAndView detail_ordernum(String orderno, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		Orderlist orderlist = service.orderlist_one(orderno);
		mav.addObject("orderlist", orderlist);
		return mav;
	}

	@RequestMapping("orderlist_cancel")
	public ModelAndView orderlist_cancel(String orderno, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		service.orderlist_stateUpdate(orderno, 7);
		mav.setViewName("redirect:orderlistpage.store");
		return mav;
	}

	@RequestMapping("orderlist_final")
	public ModelAndView orderlist_final(String orderno, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		service.orderlist_stateUpdate(orderno, 5);
		mav.setViewName("redirect:orderlistpage.store");
		return mav;
	}

}
