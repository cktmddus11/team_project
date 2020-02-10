package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import exception.StoreInfoException;
import logic.StoreInfo;
import logic.ShopService;


@Controller
@RequestMapping("admin_store")
public class Admin_StoreController {
   @Autowired
   private ShopService service;
   
   @GetMapping("*")
   public ModelAndView getStoreInfo(Integer storeno, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      StoreInfo storeinfo = null;
      if(storeno == null) {
         storeinfo = new StoreInfo();
      }else {
         storeinfo =service.StoreInfo(storeno,request);
      }
      mav.addObject("storeinfo", storeinfo);
      return mav;
   }

   @PostMapping("store_write")
   public ModelAndView store_write ( @ModelAttribute("storeinfo") @Valid StoreInfo storeinfo, BindingResult bresult, HttpServletRequest request){
      ModelAndView mav = new ModelAndView();
      if(bresult.hasErrors()) {
         mav.getModel().putAll(bresult.getModel());
         System.out.println(bresult);
         return mav;
      }
    try { 
         service.infoWrite(storeinfo,request);
         mav.setViewName("redirect:store_list.store");
     }catch(Exception e) {
         e.printStackTrace();
         throw new StoreInfoException
            ("���� ��Ͽ� �����߽��ϴ�.","store_write.store");
      }
    return mav;
   }
   
   
   @RequestMapping("store_list")
   public ModelAndView store_list() {
      ModelAndView mav = new ModelAndView();
      int limit = 10; //�������� �Խù� �� ��
      int listcount = service.storecount(); //��ü ��ϵ� �Խù� �� ��
      List<StoreInfo> storelist = service.storelist();
//      // �ִ� ������
//      int maxpage = (int)((double)listcount/limit +0.95);
//      // �������� ù��° ������
//      int startpage = (int)((pageNum/10.0+0.9)-1)*10+1;
//      // �������� ������ ������
//      int endpage = startpage+9;
//      if(endpage>maxpage) endpage=maxpage;
//      // ȭ�鿡 ��µǴ� �Խù� ��ȣ
//      int boardno = listcount - (pageNum-1) *limit;
//      mav.addObject("pageNum", pageNum);
//      mav.addObject("maxpage", maxpage);
//      mav.addObject("startpage", startpage);
//      mav.addObject("endpage", endpage);
      mav.addObject("listcount", listcount);
      mav.addObject("storelist", storelist);
//      mav.addObject("boardno", boardno);
      return mav;
   }
   
   @PostMapping("store_update")
   public ModelAndView store_update
   (@ModelAttribute("storeinfo") @Valid StoreInfo storeInfo, BindingResult bresult, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      StoreInfo dbstoreinfo = service.getStoreInfo(storeInfo.getStoreno());
      if(bresult.hasErrors()) {
         mav.getModel().putAll(bresult.getModel());
         return mav;
      }
//      if(!dbstoreinfo.getPass().equals(board.getPass())) {
//         throw new BoardException
//         ("��й�ȣ�� ��ġ ���� �ʽ��ϴ�.","update.shop?num="+board.getNum());
//      }
      try {
         service.StoreInfoUpdate(storeInfo, request);
         mav.setViewName("redirect:store_list.store");
      }catch(Exception e) {
         e.printStackTrace();
         throw new StoreInfoException
         ("�� ������ �����߽��ϴ�.","store_update.store?storeno="+storeInfo.getStoreno());
      }
      return mav;
   }
   @PostMapping("store_delete")
   public ModelAndView store_delete
   (StoreInfo storeInfo, BindingResult bresult, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      StoreInfo dbstoreinfo = service.getStoreInfo(storeInfo.getStoreno());
//      if(!dbboard.getPass().equals(board.getPass())) {
//         bresult.reject("error.login.password");
//         return mav;
//      }
      try {
         service.StoreInfoDelete(storeInfo);
         //service.boardDelete(board.getNum());
         mav.setViewName("redirect:store_list.store");
      }catch(Exception e) {
         e.printStackTrace();
         throw new StoreInfoException
         ("�� ���� �����߽��ϴ�.","store_delete.shop?num="+storeInfo.getStoreno());
      }
      return mav;
   }
   
}