package logic;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.AdminOrderListDao;
import dao.ChgDao;
import dao.StoreInfoDao;
import dao.UserDao;

@Service // @Component + service 기능
public class ShopService_cyj {
   @Autowired // database와 연결되어있는 내용물
   private StoreInfoDao storeInfoDao;
   @Autowired // database와 연결되어있는 내용물
   private UserDao userDao;
   @Autowired // database와 연결되어있는 내용물
   private ChgDao chgDao;
   @Autowired
   private AdminOrderListDao adminOrderListDao;

   public boolean selectOne(String kemail) {
      return userDao.selectOne(kemail);
   }

   // ====================== write 추가 시작
   public void infoWrite(StoreInfo storeInfo, HttpServletRequest request) {
      // 첨부파일이 존재하는 경우
      if(storeInfo.getPicfile() != null && !storeInfo.getPicfile().isEmpty()) {
         uploadFileCreate(storeInfo.getPicfile(), request, "images/storeinfo_store/");
         storeInfo.setStorepic(storeInfo.getPicfile().getOriginalFilename());
      }
      int max = storeInfoDao.maxnum();
      storeInfo.setStoreno(++max);
      storeInfoDao.insert(storeInfo);
   }

   private void uploadFileCreate(MultipartFile picture, HttpServletRequest request, String path) {
      // picture : 업로드된 파일의 내용
      String orgFile = picture.getOriginalFilename();
      String uploadPath = request.getServletContext().getRealPath("/") + path;
      File fpath = new File(uploadPath);
      if (!fpath.exists())
         fpath.mkdirs();
      try {
         // 파일로 생성
         picture.transferTo(new File(uploadPath + orgFile));
      } catch (Exception e) {
         e.printStackTrace();
      }

   }
   public StoreInfo StoreInfo(Integer storeno, HttpServletRequest request) {
      return storeInfoDao.selectOne(storeno);
   }
   
   // ====================== list 추가 시작
   public int storecount() {
      return storeInfoDao.count();
   }

   public List<StoreInfo> storelist( ) {
      return storeInfoDao.list();
   }
    //======================= update 추가 시작

   public StoreInfo getStoreInfo(int storeno) {
      return storeInfoDao.selectOne(storeno);

   }

   public void StoreInfoUpdate(StoreInfo storeInfo, HttpServletRequest request) {
      if(storeInfo.getPicfile() != null && !storeInfo.getPicfile().isEmpty()) {
         uploadFileCreate(storeInfo.getPicfile(), request, "images/storeinfo_store/");
         storeInfo.setStorepic(storeInfo.getPicfile().getOriginalFilename());
      }
      storeInfoDao.update(storeInfo);
   }
    //======================= delete 추가 시작
   public void StoreInfoDelete(StoreInfo storeInfo) {
      storeInfoDao.delete(storeInfo);
   }

   //============================================ chg write 추가
	public void ChgCreate(Chg chg, HttpServletRequest request) {
		int max = chgDao.maxnum();
		chg.setChg_no(++max);
		chgDao.insert(chg);
	}

	public Chg Chg(Integer chg_no, HttpServletRequest request) {
		return chgDao.selectOne(chg_no);
	}

	//===========================================chg list 추가
	public int chgcount() {
		return chgDao.count();
	}

	public List<Chg> chglist(Integer pageNum, int limit) {
		return chgDao.list(pageNum,limit);
	}

	public void chgstateupdate(Integer chg_no, Integer yn) {
		chgDao.stateupdate(chg_no,yn);
	}
	// ======================================== orderlist list 추가
	public int admin_ordercount(Integer orderstate) {
		return adminOrderListDao.admin_ordercount(orderstate);
	}

	public List<AdminOrderList> admin_orderlist(Integer pageNum, Integer orderstate, int limit) {
		return adminOrderListDao.admin_orderlist(pageNum,orderstate,limit);
	}

	public void admin_orderstateUpdate(String orderno, int orderstate) {
		adminOrderListDao.admin_orderstateUpdate(orderno,orderstate);
	}
	   
}