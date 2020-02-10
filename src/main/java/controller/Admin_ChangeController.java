package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.ChgException;
import exception.StoreInfoException;
import logic.Chg;
import logic.ShopService;

@Controller
@RequestMapping("admin_change")
public class Admin_ChangeController {
   @Autowired
   public ShopService service;
   
   @GetMapping("change_return_order_info")
      public ModelAndView getChg(Integer chg_no, HttpServletRequest request) {
         ModelAndView mav = new ModelAndView();
         Chg chg = null;
         if(chg_no == null) {
            chg = new Chg();
         }else {
            chg =service.Chg(chg_no,request);
         }
         mav.addObject("chg", chg);
         return mav;
      }
   @RequestMapping("change_return_order_list")
      public ModelAndView change_return_order_list(Integer pageNum,HttpServletRequest request) {
       ModelAndView mav = new ModelAndView();
       if(pageNum==null || pageNum==0) {
          pageNum = 1;
       }
         int limit = 10; //�������� �Խù� �� ��
         int chgcount = service.chgcount(); //��ü ��ϵ� �Խù� �� ��
         List<Chg> chglist = service.chglist(pageNum,limit);
         // �ִ� ������
         int maxpage = (int)((double)chgcount/limit +0.95);
         // �������� ù��° ������
         int startpage = (int)((pageNum/10.0+0.9)-1)*10+1;
         // �������� ������ ������
         int endpage = startpage+9;
         if(endpage>maxpage) endpage=maxpage;
         // ȭ�鿡 ��µǴ� �Խù� ��ȣ
         int boardno = chgcount - (pageNum-1) *limit;
         mav.addObject("pageNum", pageNum);
         mav.addObject("maxpage", maxpage);
         mav.addObject("startpage", startpage);
         mav.addObject("endpage", endpage);
         mav.addObject("chgcount", chgcount);
         mav.addObject("chglist", chglist);
         mav.addObject("boardno", boardno);
         return mav;
      }
   @RequestMapping("chg_state_yn")
   public ModelAndView chg_state_yn(Integer chg_no,Integer yn,String chg_orderno,HttpServletRequest request,HttpSession session) {
      ModelAndView mav = new ModelAndView();
      Chg chg = service.Chg(chg_no,request);
      try {
         service.chgstateupdate(chg_no,yn);
         if(yn==2) {
            service.orderstateupdate(chg.getChg_orderno(),chg.getUserid());
         }
         mav.setViewName("redirect:change_return_order_list.store");
      }catch(Exception e) {
         e.printStackTrace();
            throw new ChgException
            ("���� �� ������ �����߽��ϴ�.","change_return_order_list.store");
      }
      return mav;
   }
}
