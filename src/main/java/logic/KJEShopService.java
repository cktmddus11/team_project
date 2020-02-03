package logic;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.Admin_ItemDao;

@Service //@Component + service 기능
public class KJEShopService {
   @Autowired
   private Admin_ItemDao admin_itemDao;
   
   public List<Item> getItemList(Integer pageNum, int limit, String selectvalue) {
      return admin_itemDao.list(pageNum,limit,selectvalue);
   }
   
   public void itemCreate(Item admin_item, HttpServletRequest request) {
      //업로드된 이미지파일이 존재
      if(admin_item.getItemfile1() != null && !admin_item.getItemfile1().isEmpty()) {
         uploadFileCreate(admin_item.getItemfile1(), request, "images/product/");
         //업로드 파일 이름 설정
         admin_item.setItemfile1url(admin_item.getItemfile1().getOriginalFilename());
      }
      if(admin_item.getItemfile1() != null && !admin_item.getItemfile2().isEmpty()) {
         uploadFileCreate(admin_item.getItemfile2(), request, "images/product/");
         //업로드 파일 이름 설정
         admin_item.setItemfile2url(admin_item.getItemfile2().getOriginalFilename());
      }
      if(admin_item.getItemfile1() != null && !admin_item.getItemfile3().isEmpty()) {
         uploadFileCreate(admin_item.getItemfile3(), request, "images/product/");
         //업로드 파일 이름 설정
         admin_item.setItemfile3url(admin_item.getItemfile3().getOriginalFilename());
      }
      int max = admin_itemDao.maxitemnum();
      admin_item.setItemnum(++max);
      admin_itemDao.insert(admin_item);
   }
   
   private void uploadFileCreate(MultipartFile itemfile, HttpServletRequest request, String path) {
      String orgFile1 = itemfile.getOriginalFilename();
      String uploadPath = request.getServletContext().getRealPath("/") + path;
      File fpath = new File(uploadPath);
      if(!fpath.exists()) fpath.mkdirs(); //여러단계를 거쳐서 파일이 들어오면 mkdirs //폴더 생성
      try {
            //picture.transferTo : 파일로 생성
         itemfile.transferTo(new File(uploadPath + orgFile1));
         } catch (Exception e) {
            e.printStackTrace();
         }
   }

   public Item getAdmin_item(Integer itemnum, HttpServletRequest request) {
      return admin_itemDao.selectOne(itemnum);
   }

   public Item getAdmin_item(int itemnum) {
      return admin_itemDao.selectOne(itemnum);
   }

   public void itemUpdate(Item admin_item, HttpServletRequest request) {
      if(admin_item.getItemfile1() != null && !admin_item.getItemfile1().isEmpty()) {
         uploadFileCreate(admin_item.getItemfile1(), request, "images/product/");
         //업로드 파일 이름 설정
         admin_item.setItemfile1url(admin_item.getItemfile1().getOriginalFilename());
      }
      if(admin_item.getItemfile1() != null && !admin_item.getItemfile2().isEmpty()) {
         uploadFileCreate(admin_item.getItemfile2(), request, "images/product/");
         //업로드 파일 이름 설정
         admin_item.setItemfile2url(admin_item.getItemfile2().getOriginalFilename());
      }
      if(admin_item.getItemfile1() != null && !admin_item.getItemfile3().isEmpty()) {
         uploadFileCreate(admin_item.getItemfile3(), request, "images/product/");
         //업로드 파일 이름 설정
         admin_item.setItemfile3url(admin_item.getItemfile3().getOriginalFilename());
      }
      admin_itemDao.update(admin_item);
   }

   public int itemcount(String selectvalue) {
      return admin_itemDao.count(selectvalue);
   }

}