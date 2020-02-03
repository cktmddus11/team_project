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
         int limit = 10; //페이지당 게시물 건 수
         Integer orderstate = null;
         if(pageNum==null || pageNum==0) {
             pageNum = 1;
          }
         if(selectvalue == null || selectvalue.toString().equals("전체")) {
               orderstate = null;
         } else if(selectvalue.toString().equals("미결제")) {
            orderstate = 0;
         } else if(selectvalue.toString().equals("결제확인")) {
            orderstate = 1;
         } else if(selectvalue.toString().equals("배송준비중")) {
            orderstate = 2;
         } else if(selectvalue.toString().equals("배송중")) {
            orderstate = 3;
         } else if(selectvalue.toString().equals("배송완료")) {
            orderstate = 4;
         } else if (selectvalue.toString().equals("주문확정")) {
            orderstate = 5;
         }
         System.out.println(selectvalue);
         int admin_ordercount = service.admin_ordercount(orderstate); //전체 등록된 게시물 건 수
         List<AdminOrderList> admin_orderlist = service.admin_orderlist(pageNum,orderstate,limit);
         // 최대 페이지
         int maxpage = (int)((double)admin_ordercount/limit +0.95);
         // 보여지는 첫번째 페이지
         int startpage = (int)((pageNum/10.0+0.9)-1)*10+1;
         // 보여지는 마지막 페이지
         int endpage = startpage+9;
         if(endpage>maxpage) endpage=maxpage;
         // 화면에 출력되는 게시물 번호
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
         throw new AdminOrderException("주문 상태 설정하는데 오류가 발생하였습니다.","orderstate.store");
      }
      return mav;
   }
   @GetMapping("orderlistpage")
   public ModelAndView orderlistpage(HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      return mav;
   }
}