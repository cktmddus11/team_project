package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.OrderlistMapper;
import logic.Orderlist;

@Repository
public class OrderlistDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<String, Object>();

	public Orderlist orderCheck(Orderlist orderlist) {
		param.clear();
		param.put("orderno", orderlist.getOrderno());
		param.put("payname", orderlist.getPayname());
		param.put("userid", orderlist.getUserid());
		return sqlSession.getMapper(OrderlistMapper.class).orderCheck(param);
	}

	public List<Orderlist> orderlist_my(String kemail, String status, Integer orderstate, Integer pageNum, int limit) {
		param.clear();
		param.put("userid", kemail);
		param.put("status", status);
		param.put("orderstate", orderstate);
		param.put("startrow", (pageNum - 1) * limit);
		param.put("limit", limit);
		return sqlSession.getMapper(OrderlistMapper.class).select(param);
	}

	public int orderlist_my_count(String kemail, String status, Integer orderstate) {
		param.clear();
		param.put("userid", kemail);
		param.put("status", status);
		param.put("orderstate", orderstate);
		return sqlSession.getMapper(OrderlistMapper.class).count(param);
	}

	public int orderlist_count_status(String kemail, String status) {
		param.clear();
		param.put("userid", kemail);
		param.put("status", status);
		return sqlSession.getMapper(OrderlistMapper.class).count_status(param);
	}

	public List<Orderlist> orderlist_my_small(String kemail) {
		param.clear();
		param.put("userid", kemail);
		return sqlSession.getMapper(OrderlistMapper.class).select_small(param);
	}

	public Orderlist orderlist_one(String orderno) {
		param.clear();
		param.put("orderno", orderno);
		return sqlSession.getMapper(OrderlistMapper.class).orderlist_one(param);
	}

	public void orderlist_stateUpdate(String orderno, int i) {
		param.clear();
		param.put("orderno", orderno);
		param.put("orderstate", i);
		sqlSession.getMapper(OrderlistMapper.class).orderlist_stateUpdate(param);
	}
	/* /////////////////////////////csy//////////////////// */


	public void checkend(Orderlist orderlist) {
		param.put("orderno", orderlist.getOrderno());
		param.put("userid", orderlist.getUserid());
		param.put("payname", orderlist.getPayname());
		param.put("address",  orderlist.getAddress());
		param.put("restaddress", orderlist.getRestaddress());
		param.put("phonenum", orderlist.getPhonenum());
		param.put("username",  orderlist.getUserid());
		param.put("selectpay", orderlist.getSelectpay());
		param.put("usepoint", orderlist.getUsepoint());
		param.put("orderstate", orderlist.getOrderstate());
		 sqlSession.getMapper(OrderlistMapper.class).checkend(param);
		
		
	}

	public void insertorderitem(int itemnum, String orderno, int quantity, int price, String userid) {
		param.put("itemnum", itemnum);
		param.put("orderno",  orderno);
		param.put("quantity", quantity);
		param.put("price",  price);
		param.put("userid",  userid);
		 sqlSession.getMapper(OrderlistMapper.class).insertorderitem(param);
			
	}

	

}