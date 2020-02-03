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
         }
         System.out.println(selectvalue);
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
   public ModelAndView orderlistpage(HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      return mav;
   }
}