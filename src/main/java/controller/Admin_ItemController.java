package controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import exception.BoardException;
import exception.ItemException;
import logic.Item;
import logic.ShopService;

@Controller
@RequestMapping("admin_item")
public class Admin_ItemController {
   @Autowired
   private ShopService service;
   
   @RequestMapping("product_list")
   public ModelAndView list(Integer pageNum, String selectvalue, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      selectvalue = request.getParameter("selectvalue");
      if(pageNum == null || pageNum.toString().equals("")) {
         pageNum = 1;
      }
      if(selectvalue == null || selectvalue.toString().equals("��ü")) {
         selectvalue = "0";
      } else if(selectvalue.toString().equals("����")) {
         selectvalue = "1";
      } else if(selectvalue.toString().equals("�Ƿ�")) {
         selectvalue = "2";
      } else if(selectvalue.toString().equals("��Ȱ��ũ")) {
         selectvalue = "3";
      } else if(selectvalue.toString().equals("���̾�")) {
         selectvalue = "4";
      } else if(selectvalue.toString().equals("����ġ")) {
         selectvalue = "5";
      }
      System.out.println(selectvalue); 
      int limit = 10; //�������� �������� �Խù� �Ǽ�
      int itemcount = service.itemcount(selectvalue); //��ü ��ϵ� �Խù� �Ǽ�
      List<Item> itemlist = service.getItemList(pageNum,limit,selectvalue);
      int maxpage = (int)((double)itemcount/limit + 0.95); 
      //�������� ù��° ������
      int startpage = (int)((pageNum/10.0 + 0.9) -1) * 10 + 1; 
      //�������� ������ ������
      int endpage = startpage + 9;
      if(endpage > maxpage) endpage = maxpage;
      int boardno = itemcount - (pageNum - 1) * limit;
      mav.addObject("pageNum", pageNum);
      mav.addObject("maxpage", maxpage);
      mav.addObject("startpage", startpage);
      mav.addObject("endpage", endpage);
      mav.addObject("itemcount", itemcount);
      mav.addObject("itemlist",itemlist);
      mav.addObject("boardno", boardno);
      mav.addObject("selectvalue", selectvalue);
      return mav;
   }
   @RequestMapping("imgupload")
   public String imgupload(MultipartFile upload, String CKEditorFuncNum, HttpServletRequest request, 
         Model model) {
      String path = request.getServletContext().getRealPath("/") + "admin_item/imagesfile/";
      File f = new File(path);
      if(!f.exists()) f.mkdirs();
      if(!upload.isEmpty()) { //������ ���ε�� ������ �ִٸ�
         //���ε�� ������ ������ File ��ü
         File file = new File(path, upload.getOriginalFilename());
         try {
            upload.transferTo(file); //���ε� ���� ����
         } catch(Exception e) {
            e.printStackTrace();
         }
      }
      String fileName = "/kakaofriends/admin_item/imagesfile/"+upload.getOriginalFilename();
      model.addAttribute("fileName", fileName);
      model.addAttribute("CKEditorFuncNum", CKEditorFuncNum);
      return "ckedit";
   }
   
   @GetMapping("*")
   public ModelAndView getAdmin_item(Integer itemnum, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      Item item = null;
      if (itemnum == null) {
         item = new Item();
      } else {
         item = service.getAdmin_item(itemnum,request);
      }
      mav.addObject("item", item);
      return mav; 
   }
   
   
   @PostMapping("item_write")
   public ModelAndView item_write(@Valid Item admin_item, BindingResult bresult, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      if(bresult.hasErrors()) {
         mav.getModel().putAll(bresult.getModel());
         System.out.println(bresult);
         return mav;
      }
      try {
         service.itemCreate(admin_item,request);
         service.itemwhousinginsert(admin_item.getItemnum());
         mav.setViewName("redirect:product_list.store");
      } catch (Exception e) {
         e.printStackTrace();
         throw new ItemException("�Խù� ��Ͽ� �����߽��ϴ�.","item_write.store");
      }
      return mav;
   }
   
   @PostMapping("item_update")
   public ModelAndView item_update(@Valid Item item, BindingResult bresult, HttpServletRequest request) {
      ModelAndView mav = new ModelAndView();
      /* Admin_item dbAdmin_item = service.getAdmin_item(admin_item.getItemnum()); */
      if(bresult.hasErrors()) { //��ȿ�� ����
         mav.getModel().putAll(bresult.getModel());
         return mav;
      }
      /*
       * if(!board.getPass().equals(dbBoard.getPass())) { throw new
       * BoardException("��й�ȣ�� Ʋ���ϴ�.","update.shop?num="+board.getNum()); }
       */
      try {
         service.itemUpdate(item, request); //update�� ��ġ�� �˾ƾ��ϹǷ� request��ü�� �־����.
         mav.setViewName("redirect:product_list.store");
      } catch (Exception e) {
         e.printStackTrace();
         throw new ItemException("������Ʈ ������ �����߽��ϴ�.","item_update.store?itemnum="+item.getItemnum());
      }
      return mav;
   }
   
   @PostMapping("item_delete")
   public ModelAndView item_delete(Item item) {
      ModelAndView mav = new ModelAndView();
      try {
         service.itemDelete(item);
         mav.setViewName("redirect:product_list.store");
      } catch (Exception e) {
         e.printStackTrace();
         throw new BoardException("�Խñ� ������ �����߽��ϴ�.","item_delete.store?itemnum="+item.getItemnum());
      }
      return mav;
   }
}