package logic;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import dao.AddrDao;
import dao.AdminOrderListDao;
import dao.Admin_ItemDao;
import dao.ChgDao;
import dao.HelpDao;
import dao.ItemDao;
import dao.MypageDao;
import dao.OrderlistDao;
import dao.PointDao;
import dao.QnaboardDao;
import dao.StoreInfoDao;
import dao.UserDao;
import dao.WhousingDao;
import dao.WishListDao;

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
	@Autowired
	private MypageDao mypageDao;

	@Autowired // database와 연결되어있는 내용물
	private WishListDao wishListDao;
	@Autowired // database와 연결되어있는 내용물
	private PointDao pointDao;
	@Autowired // database와 연결되어있는 내용물
	private AddrDao addrDao;
	@Autowired
	private WhousingDao whousingDao;
	
	@Autowired
	private QnaboardDao qnaboardDao;

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

	public List<Item> itemlist(Integer category, Integer subcategory, Integer character, Integer select2,
			String userid) {
		return itemDao.itemlist(category, subcategory, character, select2, userid);
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

	public void itemDelete(Item item) {
		admin_itemDao.delete(item.getItemnum());
	}

	public void itemwhousinginsert(int itemnum) {
		int whousingnum = whousingDao.maxwhousingnum();
		whousingDao.insert(itemnum, whousingnum);
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

	///////////////// PHY
	public void memberInsert2(User user, HttpServletRequest request) { // 관리자 회원가입
		if (user.getProfile() != null && !user.getProfile().isEmpty()) {
			uploadFileCreate(user.getProfile(), request, "admin/imgfile/");
			// 업로드 파일 이름 설정
			user.setProfileUrl(user.getProfile().getOriginalFilename());
		}
		int numcnt = userDao.numcntadd();
		user.setUserno(++numcnt);
		System.out.println(user);
		userDao.memberInsert2(user);
	}

	public User getUser(String userid) { // 아직 안씀 관리자 회원 정보 조회
		return userDao.selectOne2(userid);
	}

	public List<User> userList() { // 상위관리자가 관리자 승인할때
		return userDao.list();
	}
	//////////////////////////////////// 처음 합침
// csy 0204

	public List<Item> itemsale(Integer category, Integer subcategory, Integer character_c) {
		return itemDao.itemsale(category, subcategory, character_c);
	}

	public Item itemdetail(int no) {
		return itemDao.itemdetail(no);
	}

	public List<Review> reviewlist(int no, String sort) {
		return itemDao.reviewlist(no, sort);
	}

	public int reviewcount(int no) {
		return itemDao.reviewcount(no);
	}

	public void reviewwrite(Review review) {
		int max = itemDao.maxnum();
		review.setReviewno(++max);
		itemDao.reviewwrite(review);

	}

	public List<Up> uplist(int reviewno) {
		return itemDao.uplist(reviewno);
	}

	public List<Item> indexlist(int i) {
		return itemDao.indexlist(i);
	}

	public void reviewup(Up up) {
		int max = itemDao.maxnumup();
		up.setUpno(max++);
		itemDao.reviewup(up);
	}

	public void reviewdown(Up up) {
		itemDao.reviewdown(up);
	}

	public List<Review> reviewlist2(int no, String sort) {
		return itemDao.reviewlist2(no, sort);
	}

	public Pick pickselect(String userid, Integer itemnum) {
		return itemDao.pickselect(userid, itemnum);
	}

	public void heartup(Pick p) {
		int maxpick = itemDao.maxpix();
		p.setPickno(++maxpick);
		itemDao.heartup(p);
	}

	public void heartdown(Pick p) {
		itemDao.heartdown(p);

	}

	public void cartadd(ItemSet itemSet) {
		itemDao.cartadd(itemSet);

	}

	public void cartdelete(ItemSet itemSet) {
		itemDao.cartdelete(itemSet);
	}

	public List<ItemSet> cartview(String userid) {
		return mypageDao.cartview(userid);
	}

	public ItemSet cartone(String userid, int itemnum) {
		return itemDao.cartone(userid, itemnum);
	}

	public void cartaddupdate(ItemSet itemSet) {
		itemDao.cartaddupdate(itemSet);
	}

	/////// cyj 0207 /////////////
	// ==========================================================choiyoonjeong -
	/////// wishlist
	public int wishlistcount(String kemail) {
		return wishListDao.wishlistcount(kemail);
	}

	public List<WishList> wishlist(String kemail, Integer pageNum, int limit) {
		return wishListDao.wishlist(kemail, pageNum, limit);
	}

	public void WishListDelete(Integer pickno) {
		wishListDao.wishlistDelete(pickno);
	}

	// =======================================================choiyoonjeong -
	// pointlist
	public int pointlistcount(String kemail) {
		return pointDao.pointlistcount(kemail);
	}

	public List<Point> pointlist(String kemail, Integer pageNum, int limit) {
		return pointDao.pointlist(kemail, pageNum, limit);
	}

	public int totalpoint(String kemail) {
		return pointDao.totalpoint(kemail);
	}

	// ===================================================== choiyoonjeong
	// orderupdate
	public Addr AddressSelect(String kemail) {
		return addrDao.AddressSelect(kemail);
	}

	public void AddressUpdate(String kemail, String address, String restaddress) {
		addrDao.AddressUpdate(kemail, address, restaddress);
	}

	// ======================================================== choiyoonjeong chg수정
	public void orderstateupdate(String chg_orderno, String userid) {
		chgDao.orderstateupdate(chg_orderno, userid);
	}

	public List<Orderlist> orderlist_my(String kemail, String status, Integer orderstate, Integer pageNum, int limit) {
		return orderlistDao.orderlist_my(kemail, status, orderstate, pageNum, limit);
	}

	public int orderlist_my_count(String kemail, String status, Integer orderstate) {
		return orderlistDao.orderlist_my_count(kemail, status, orderstate);
	}

	public int count_status(String kemail, String status) {
		return orderlistDao.orderlist_count_status(kemail, status);
	}

	public List<Orderlist> orderlist_my_small(String kemail) {
		return orderlistDao.orderlist_my_small(kemail);
	}

	public Orderlist orderlist_one(String orderno) {
		return adminOrderListDao.orderlist_one(orderno);
	}

	public int orderno_count(String orderno) {
		return adminOrderListDao.orderno_count(orderno);
	}

	public List<Orderlist> orderlist(String orderno) {
		return adminOrderListDao.orderlist(orderno);
	}

	public void orderlist_stateUpdate(String orderno, int i) {
		orderlistDao.orderlist_stateUpdate(orderno, i);
	}
	////////////////////////////

	public List<Item> indexitemlist(String userid, int i) {
		return itemDao.indexitemlist(userid, i);
	}

	public void pointinsert(Point p) {
		int max = userDao.maxpointnum();
		p.setPointnum(max++);
		userDao.pointinsert(p);

	}

	public void checkend(Orderlist orderlist) {
		// 주문자 정보를 sale테이블에 저장
		// sale 테이블의 saleid값 + 1

		// 주문 상품 정보를 cart 에서 조회
		/*
		 * List<ItemSet> itemList = cart.getItemSetList(); int i = 0; for(ItemSet is :
		 * itemList) { SaleItem saleItem = new SaleItem(sale.getSaleid(), saleItemId,
		 * is); sale.getItemList().add(saleItem); saleItemDao.insert(saleItem); }
		 */

		orderlistDao.checkend(orderlist);

	}

	public void deletecart(String userid) {
		itemDao.deletecart(userid);

	}

	public void insertorderitem(int itemnum, String orderno, int quantity, int price, String userid) {
		orderlistDao.insertorderitem(itemnum, orderno, quantity, price, userid);

	}
	/* //////////////cyj0210 */

	public int admin_ordercount_group(Integer orderstate) {
		return adminOrderListDao.admin_ordercount_group(orderstate);
	}

	public List<AdminOrderList> admin_orderlist_group(Integer pageNum, Integer orderstate, int limit) {
		return adminOrderListDao.admin_orderlist_group(pageNum, orderstate, limit);
	}

	/* ///////kje/////// */
//////////////////////////상품 입고
	public void whousing_inWrite(Whousing whousing, HttpServletRequest request) {
		int inmax = whousingDao.maxwhousingnum();
		whousing.setWhousingnum(++inmax);
		whousingDao.insert(whousing);
	}

	public Whousing getWhousing(Integer whousingnum, HttpServletRequest request) {
		return whousingDao.selectOne(whousingnum);
	}

	public List<Whousing> whousinglist() {
		return whousingDao.list();
	}

	public List<Whousing> wkeeplist() {
		return whousingDao.keep();
	}

	public List<Whousing> outwhousing() {
		return whousingDao.out();
	}

	public void whousing_outWrite(Whousing whousing, HttpServletRequest request) {
		int inmax = whousingDao.maxwhousingnum();
		whousing.setWhousingnum(++inmax);
		whousingDao.outupdate(whousing);
	}

	public Whousing getdbWhousing(int itemnum, int whousing_code) {
		return whousingDao.getdbWhousing(itemnum, whousing_code);
	}

	public List<Whousing> whousinginlist(Integer pageNum, int limit) {
		return whousingDao.in(pageNum, limit);
	}

	public List<Whousing> whousingoutwhousing() {
		return whousingDao.whousingoutwhousing();
	}

	public int admin_incount() {
		return whousingDao.count();
	}
	/* //////phy/////// */
	public void adminInsert(User user, HttpServletRequest request) { //관리자 회원가입
		if(user.getProfile() != null && !user.getProfile().isEmpty()) {
	         uploadFileCreate(user.getProfile(), request, "admin/imgfile/");
	         user.setProfileUrl(user.getProfile().getOriginalFilename());
	      }
		int numcnt = userDao.numcntadd();
		user.setUserno(++numcnt);
		userDao.adminInsert(user);
	}
	public List<User> userList(int access) { //회원가입 리스트
		return userDao.list(access);
	}
	public void membercodeUpdate(Integer access, String userid) {
		userDao.codeUpdate(access, userid);
	}
	public void userDelete(String userid) {
		userDao.userdelete(userid);
	}
	public void adminUpdate(User user) {	
		userDao.adminUpdate(user);
	}
	public List<Qnaboard> qnalist(Integer pageNum, int limit, String content) {
		return qnaboardDao.list(pageNum, limit, content);
	}
	public int qnacount(String content) {
		return qnaboardDao.count(content);
	}
	public void qnaboardWrite(Qnaboard qnaboard, HttpServletRequest request) {
		  if(qnaboard.getQnafile1() != null && !qnaboard.getQnafile1().isEmpty()){
			uploadFileCreate(qnaboard.getQnafile1(), request, "qnaboard/file/");  
			qnaboard.setQnafileUrl(qnaboard.getQnafile1().getOriginalFilename());
		  }
		  qnaboardDao.qnainsert(qnaboard);
		}
	/*//////////////// */
}
