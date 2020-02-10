package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.WhousingException;
import logic.ShopService;
import logic.Whousing;

@Controller
@RequestMapping("admin_out")
public class Admin_OutController {
   @Autowired
   private ShopService service;
   
   @RequestMapping("order_item_out")
   public ModelAndView order_item_in() {
      ModelAndView mav = new ModelAndView();
      List<Whousing> whousingoutwhousing = service.whousingoutwhousing();
      mav.addObject("whousingoutwhousing", whousingoutwhousing);
      return mav;
   }
   
   @RequestMapping("order_item_out_write")
   public ModelAndView order_item_in_write() {
      ModelAndView mav = new ModelAndView();
      List<Whousing> outwhousing = service.outwhousing();
      mav.addObject("outwhousing", outwhousing);
      return mav;
   }
   
   @PostMapping("order_item_out_write")
   public ModelAndView order_item_in_write(Whousing whousing, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
//      Whousing dbwhosing = service.getdbWhousing(whousing.getItemnum(), whousing.getWhousing_code());
//      System.out.println(whousing.getItemnum());
//      whousing.setWhousingquant(dbwhosing.getWhousingquant()-whousing.getWhousingquant());
      try {
         service.whousing_outWrite(whousing,request); //게시물등록
         mav.setViewName("redirect:order_item_out.store");
      } catch (Exception e) {
         e.printStackTrace();
         throw new WhousingException("입고 등록에 실패했습니다.","order_item_out_write.store");
      }
      return mav;
   }
}