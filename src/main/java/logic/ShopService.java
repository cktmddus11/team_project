package logic;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.AdminOrderListDao;
import dao.Admin_ItemDao;
import dao.ChgDao;
import dao.HelpDao;
import dao.ItemDao;
import dao.OrderlistDao;
import dao.StoreInfoDao;
import dao.UserDao;

@Service // @Component + service 기능
public class ShopService {
	@Autowired
	private HelpDao helpDao;
	@Autowired
	private UserDao userDao;
	@Autowired
	private OrderlistDao orderlistDao;
	@Autowired
	private ItemDao itemDao;
	@Autowired
	private Admin_ItemDao admin_itemDao;
	@Autowired // database와 연결되어있는 내용물
	private ChgDao chgDao;
	@Autowired
	private AdminOrderListDao adminOrderListDao;
	@Autowired // database와 연결되어있는 내용물
	private StoreInfoDao storeInfoDao;

	public boolean selectOne(String kemail) {
		return userDao.selectOne(kemail);
	}

	public void memberInsert(User user) {
		userDao.memberInsert(user);

	}

	public List<Help> selectboard(int boardcode, int filter, Integer pageNum, int limit) {
		return helpDao.selectboard(boardcode, filter, pageNum, limit);
	}

	public int boardcount(int boardcode, Object filter) {
		return helpDao.count(boardcode, filter);
	}

	public Help getHelp(Integer no) {
		return helpDao.selectOne(no);
	}

	private void uploadFileCreate(MultipartFile picture, HttpServletRequest request, String path) {
		// picture : 업로드된 파일의 내용
		String orgFile = picture.getOriginalFilename();
		String uploadPath = request.getServletContext().getRealPath("/") + path;
		File fpath = new File(uploadPath);
		if (!fpath.exists()) {
			fpath.mkdirs(); // mkdirs 여러개의 푤더 생성
			// 한개 폴더 -> mkdir
		}
		try {
			// picture 업로드된 파일의 내용을 파일로 생성
			picture.transferTo(new File(uploadPath + orgFile));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void boardUpdate(Help help, HttpServletRequest request) {
		if (help.getQnafile1() != null && !help.getQnafile1().isEmpty()) {
			System.out.println("호출");
			// 파일 업로드 : 업로드된 파일의 내용을 파일에 저장
			uploadFileCreate(help.getQnafile1(), request, "help/img/");
			help.setQnafileurl(help.getQnafile1().getOriginalFilename());
			// 사진 url중 순수 사진 이름만 가져와서 item에 저장
		}
		helpDao.boardupdate(help);
		System.out.println(help);

	}

	public void boardWrite(Help help, HttpServletRequest request) {
		// 첨부파일이 존재하는 경우
		if (help.getQnafile1() != null && !help.getQnafile1().isEmpty()) {
			uploadFileCreate(help.getQnafile1(), request, "help/img/");
			// 업로드된 파일 이름 설정
			help.setQnafileurl(help.getQnafile1().getOriginalFilename());
		}
		// 현재 등록된 게시물 번호 최대값
		int max = helpDao.maxnum();
		help.setQnano(++max);
		helpDao.insert(help);
		System.out.println(help);
	}

	public void boardDelete(int qnano) {
		helpDao.boardDelete(qnano);

	}

	public boolean orderCheck(Orderlist orderlist) {
		if (orderlistDao.orderCheck(orderlist) != null) {
			return true;
		}
		return false;

	}

	public List<Item> itemlist(Integer category, Integer subcategory, Integer character) {
		return itemDao.itemlist(category, subcategory, character);
	}

	public int itemlistcount(Integer category, Integer subcategory, Integer character) {
		return itemDao.itemlistcount(category, subcategory, character);
	}
	///////// kje////////

	public List<Item> getItemList(Integer pageNum, int limit, String selectvalue) {
		return admin_itemDao.list(pageNum, limit, selectvalue);
	}

	public void itemCreate(Item admin_item, HttpServletRequest request) {
		// 업로드된 이미지파일이 존재
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile1().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile1(), request, "images/product/");
			// 업로드 파일 이름 설정
			admin_item.setItemfile1url(admin_item.getItemfile1().getOriginalFilename());
		}
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile2().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile2(), request, "images/product/");
			// 업로드 파일 이름 설정
			admin_item.setItemfile2url(admin_item.getItemfile2().getOriginalFilename());
		}
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile3().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile3(), request, "images/product/");
			// 업로드 파일 이름 설정
			admin_item.setItemfile3url(admin_item.getItemfile3().getOriginalFilename());
		}
		int max = admin_itemDao.maxitemnum();
		admin_item.setItemnum(++max);
		admin_itemDao.insert(admin_item);
	}

	public Item getAdmin_item(Integer itemnum, HttpServletRequest request) {
		return admin_itemDao.selectOne(itemnum);
	}

	public Item getAdmin_item(int itemnum) {
		return admin_itemDao.selectOne(itemnum);
	}

	public void itemUpdate(Item admin_item, HttpServletRequest request) {
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile1().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile1(), request, "images/product/");
			// 업로드 파일 이름 설정
			admin_item.setItemfile1url(admin_item.getItemfile1().getOriginalFilename());
		}
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile2().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile2(), request, "images/product/");
			// 업로드 파일 이름 설정
			admin_item.setItemfile2url(admin_item.getItemfile2().getOriginalFilename());
		}
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile3().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile3(), request, "images/product/");
			// 업로드 파일 이름 설정
			admin_item.setItemfile3url(admin_item.getItemfile3().getOriginalFilename());
		}
		admin_itemDao.update(admin_item);
	}

	public int itemcount(String selectvalue) {
		return admin_itemDao.count(selectvalue);
	}

	//////////////// cyj
	// ====================== write 추가 시작
	public void infoWrite(StoreInfo storeInfo, HttpServletRequest request) {
		// 첨부파일이 존재하는 경우
		if (storeInfo.getPicfile() != null && !storeInfo.getPicfile().isEmpty()) {
			uploadFileCreate(storeInfo.getPicfile(), request, "images/storeinfo_store/");
			storeInfo.setStorepic(storeInfo.getPicfile().getOriginalFilename());
		}
		int max = storeInfoDao.maxnum();
		storeInfo.setStoreno(++max);
		storeInfoDao.insert(storeInfo);
	}



	public StoreInfo StoreInfo(Integer storeno, HttpServletRequest request) {
		return storeInfoDao.selectOne(storeno);
	}

	// ====================== list 추가 시작
	public int storecount() {
		return storeInfoDao.count();
	}

	public List<StoreInfo> storelist() {
		return storeInfoDao.list();
	}
	// ======================= update 추가 시작

	public StoreInfo getStoreInfo(int storeno) {
		return storeInfoDao.selectOne(storeno);

	}

	public void StoreInfoUpdate(StoreInfo storeInfo, HttpServletRequest request) {
		if (storeInfo.getPicfile() != null && !storeInfo.getPicfile().isEmpty()) {
			uploadFileCreate(storeInfo.getPicfile(), request, "images/storeinfo_store/");
			storeInfo.setStorepic(storeInfo.getPicfile().getOriginalFilename());
		}
		storeInfoDao.update(storeInfo);
	}

	// ======================= delete 추가 시작
	public void StoreInfoDelete(StoreInfo storeInfo) {
		storeInfoDao.delete(storeInfo);
	}

	// ============================================ chg write 추가
	public void ChgCreate(Chg chg, HttpServletRequest request) {
		int max = chgDao.maxnum();
		chg.setChg_no(++max);
		chgDao.insert(chg);
	}

	public Chg Chg(Integer chg_no, HttpServletRequest request) {
		return chgDao.selectOne(chg_no);
	}

	// ===========================================chg list 추가
	public int chgcount() {
		return chgDao.count();
	}

	public List<Chg> chglist(Integer pageNum, int limit) {
		return chgDao.list(pageNum, limit);
	}

	public void chgstateupdate(Integer chg_no, Integer yn) {
		chgDao.stateupdate(chg_no, yn);
	}

	// ======================================== orderlist list 추가
	public int admin_ordercount(Integer orderstate) {
		return adminOrderListDao.admin_ordercount(orderstate);
	}

	public List<AdminOrderList> admin_orderlist(Integer pageNum, Integer orderstate, int limit) {
		return adminOrderListDao.admin_orderlist(pageNum, orderstate, limit);
	}

	public void admin_orderstateUpdate(String orderno, int orderstate) {
		adminOrderListDao.admin_orderstateUpdate(orderno, orderstate);
	}
	/////////////////PHY
	  public void memberInsert2(User user, HttpServletRequest request) { //관리자 회원가입
	      if(user.getProfile() != null && !user.getProfile().isEmpty()) {
	            uploadFileCreate(user.getProfile(), request, "admin/imgfile/");
	            //업로드 파일 이름 설정
	            user.setProfileUrl(user.getProfile().getOriginalFilename());
	         }
	      int numcnt = userDao.numcntadd();
	      user.setUserno(++numcnt);
	      userDao.memberInsert(user);
	   }
	 
	   public User getUser(String userid) { //아직 안씀 관리자 회원 정보 조회
	      return userDao.selectOne2(userid);
	   }
	   public List<User> userList() { //상위관리자가 관리자 승인할때
	      return userDao.list();
	   }


}
