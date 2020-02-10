package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import logic.ShopService;
import logic.Whousing;

@Controller
@RequestMapping("admin_keep")
public class Admin_KeepController {
   @Autowired
   private ShopService service;
   
   @RequestMapping("order_item_list")
   public ModelAndView order_item_list() {
      ModelAndView mav = new ModelAndView();
      List<Whousing> wkeeplist = service.wkeeplist();
      mav.addObject("wkeeplist", wkeeplist);
      return mav;
   }
}