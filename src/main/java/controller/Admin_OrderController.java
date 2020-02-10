package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.AdminOrderException;
import logic.AdminOrderList;
import logic.Orderlist;
import logic.ShopService;

@Controller
@RequestMapping("admin_order")
public class Admin_OrderController {
   @Autowired
      private ShopService service;
      
   @RequestMapping("orderstate")
      public ModelAndView store_list(Integer pageNum,String selectvalue, HttpServletRequest request) {
         ModelAndView mav = new ModelAndView();
         int limit = 10; //�������� �Խù� �� ��
         Integer orderstate = null;
         if(pageNum==null || pageNum==0) {
             pageNum = 1;
          }
         if(selectvalue == null || selectvalue.toString().equals("��ü")) {
               orderstate = null;
         } else if(selectvalue.toString().equals("�̰���")) {
            orderstate = 0;
         } else if(selectvalue.toString().equals("����Ȯ��")) {
            orderstate = 1;
         } else if(selectvalue.toString().equals("����غ���")) {
            orderstate = 2;
         } else if(selectvalue.toString().equals("�����")) {
            orderstate = 3;
         } else if(selectvalue.toString().equals("��ۿϷ�")) {
            orderstate = 4;
         } else if (selectvalue.toString().equals("�ֹ�Ȯ��")) {
            orderstate = 5;
         } else if (selectvalue.toString().equals("��ǰ/��ȯ")) {
             orderstate = 6;
          } else if (selectvalue.toString().equals("���")) {
              orderstate = 7;
          }
         int admin_ordercount = service.admin_ordercount(orderstate); //��ü ��ϵ� �Խù� �� ��
         List<AdminOrderList> admin_orderlist = service.admin_orderlist(pageNum,orderstate,limit);
         // �ִ� ������
         int maxpage = (int)((double)admin_ordercount/limit +0.95);
         // �������� ù��° ������
         int startpage = (int)((pageNum/10.0+0.9)-1)*10+1;
         // �������� ������ ������
         int endpage = startpage+9;
         if(endpage>maxpage) endpage=maxpage;
         // ȭ�鿡 ��µǴ� �Խù� ��ȣ
         int boardno = admin_ordercount - (pageNum-1) *limit;
         mav.addObject("pageNum", pageNum);
         mav.addObject("maxpage", maxpage);
         mav.addObject("startpage", startpage);
         mav.addObject("endpage", endpage);
         mav.addObject("admin_ordercount", admin_ordercount);
         mav.addObject("admin_orderlist", admin_orderlist);
         mav.addObject("boardno", boardno);
         mav.addObject("selectvalue", selectvalue);
         return mav;
      }
   
   @RequestMapping("orderstateUpdate.store")
   public ModelAndView orderstateUpdate(String orderno,int orderstate, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      try {
         service.admin_orderstateUpdate(orderno,orderstate);
         mav.setViewName("redirect:orderstate.store");
      }catch (Exception e) {
         e.printStackTrace();
         throw new AdminOrderException("�ֹ� ���� �����ϴµ� ������ �߻��Ͽ����ϴ�.","orderstate.store");
      }
      return mav;
   }
   @GetMapping("orderlistpage")
   public ModelAndView orderlistpage(String orderno, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      int orderno_count = service.orderno_count(orderno);
      if(orderno_count==1) {
         Orderlist orderlist_one = service.orderlist_one(orderno);
         mav.addObject("orderlist", orderlist_one);
         mav.addObject("orderno", orderlist_one.getOrderno());
         mav.addObject("orderstate", orderlist_one.getOrderstate());
         mav.addObject("selectpay", orderlist_one.getSelectpay());
        mav.addObject("datepay", orderlist_one.getDatepay());
        mav.addObject("usepoint", orderlist_one.getUsepoint());
      } else {
         List<Orderlist> orderlist = service.orderlist(orderno);
         for (Orderlist i : orderlist) {
            mav.addObject("orderno", i.getOrderno());
            mav.addObject("orderstate", i.getOrderstate());
            mav.addObject("selectpay", i.getSelectpay());
            mav.addObject("datepay", i.getDatepay());
            mav.addObject("usepoint", i.getUsepoint());
            mav.addObject("username", i.getUsername());
            mav.addObject("phonenum", i.getPhonenum());
            mav.addObject("userid", i.getUserid());
            mav.addObject("address", i.getAddress());
            mav.addObject("restaddress", i.getRestaddress());
      }
         mav.addObject("orderlist", orderlist);
      }
      mav.addObject("orderno_count", orderno_count);
      return mav;
   }
}
