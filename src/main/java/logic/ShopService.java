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

@Service // @Component + service ���
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
	@Autowired // database�� ����Ǿ��ִ� ���빰
	private ChgDao chgDao;
	@Autowired
	private AdminOrderListDao adminOrderListDao;
	@Autowired // database�� ����Ǿ��ִ� ���빰
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
		// picture : ���ε�� ������ ����
		String orgFile = picture.getOriginalFilename();
		String uploadPath = request.getServletContext().getRealPath("/") + path;
		File fpath = new File(uploadPath);
		if (!fpath.exists()) {
			fpath.mkdirs(); // mkdirs �������� ǧ�� ����
			// �Ѱ� ���� -> mkdir
		}
		try {
			// picture ���ε�� ������ ������ ���Ϸ� ����
			picture.transferTo(new File(uploadPath + orgFile));
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public void boardUpdate(Help help, HttpServletRequest request) {
		if (help.getQnafile1() != null && !help.getQnafile1().isEmpty()) {
			System.out.println("ȣ��");
			// ���� ���ε� : ���ε�� ������ ������ ���Ͽ� ����
			uploadFileCreate(help.getQnafile1(), request, "help/img/");
			help.setQnafileurl(help.getQnafile1().getOriginalFilename());
			// ���� url�� ���� ���� �̸��� �����ͼ� item�� ����
		}
		helpDao.boardupdate(help);
		System.out.println(help);

	}

	public void boardWrite(Help help, HttpServletRequest request) {
		// ÷�������� �����ϴ� ���
		if (help.getQnafile1() != null && !help.getQnafile1().isEmpty()) {
			uploadFileCreate(help.getQnafile1(), request, "help/img/");
			// ���ε�� ���� �̸� ����
			help.setQnafileurl(help.getQnafile1().getOriginalFilename());
		}
		// ���� ��ϵ� �Խù� ��ȣ �ִ밪
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
		// ���ε�� �̹��������� ����
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile1().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile1(), request, "images/product/");
			// ���ε� ���� �̸� ����
			admin_item.setItemfile1url(admin_item.getItemfile1().getOriginalFilename());
		}
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile2().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile2(), request, "images/product/");
			// ���ε� ���� �̸� ����
			admin_item.setItemfile2url(admin_item.getItemfile2().getOriginalFilename());
		}
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile3().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile3(), request, "images/product/");
			// ���ε� ���� �̸� ����
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
			// ���ε� ���� �̸� ����
			admin_item.setItemfile1url(admin_item.getItemfile1().getOriginalFilename());
		}
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile2().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile2(), request, "images/product/");
			// ���ε� ���� �̸� ����
			admin_item.setItemfile2url(admin_item.getItemfile2().getOriginalFilename());
		}
		if (admin_item.getItemfile1() != null && !admin_item.getItemfile3().isEmpty()) {
			uploadFileCreate(admin_item.getItemfile3(), request, "images/product/");
			// ���ε� ���� �̸� ����
			admin_item.setItemfile3url(admin_item.getItemfile3().getOriginalFilename());
		}
		admin_itemDao.update(admin_item);
	}

	public int itemcount(String selectvalue) {
		return admin_itemDao.count(selectvalue);
	}

	//////////////// cyj
	// ====================== write �߰� ����
	public void infoWrite(StoreInfo storeInfo, HttpServletRequest request) {
		// ÷�������� �����ϴ� ���
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

	// ====================== list �߰� ����
	public int storecount() {
		return storeInfoDao.count();
	}

	public List<StoreInfo> storelist() {
		return storeInfoDao.list();
	}
	// ======================= update �߰� ����

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

	// ======================= delete �߰� ����
	public void StoreInfoDelete(StoreInfo storeInfo) {
		storeInfoDao.delete(storeInfo);
	}

	// ============================================ chg write �߰�
	public void ChgCreate(Chg chg, HttpServletRequest request) {
		int max = chgDao.maxnum();
		chg.setChg_no(++max);
		chgDao.insert(chg);
	}

	public Chg Chg(Integer chg_no, HttpServletRequest request) {
		return chgDao.selectOne(chg_no);
	}

	// ===========================================chg list �߰�
	public int chgcount() {
		return chgDao.count();
	}

	public List<Chg> chglist(Integer pageNum, int limit) {
		return chgDao.list(pageNum, limit);
	}

	public void chgstateupdate(Integer chg_no, Integer yn) {
		chgDao.stateupdate(chg_no, yn);
	}

	// ======================================== orderlist list �߰�
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
	  public void memberInsert2(User user, HttpServletRequest request) { //������ ȸ������
	      if(user.getProfile() != null && !user.getProfile().isEmpty()) {
	            uploadFileCreate(user.getProfile(), request, "admin/imgfile/");
	            //���ε� ���� �̸� ����
	            user.setProfileUrl(user.getProfile().getOriginalFilename());
	         }
	      int numcnt = userDao.numcntadd();
	      user.setUserno(++numcnt);
	      userDao.memberInsert(user);
	   }
	 
	   public User getUser(String userid) { //���� �Ⱦ� ������ ȸ�� ���� ��ȸ
	      return userDao.selectOne2(userid);
	   }
	   public List<User> userList() { //���������ڰ� ������ �����Ҷ�
	      return userDao.list();
	   }


}
