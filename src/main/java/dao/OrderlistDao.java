package dao;

import java.util.HashMap;
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
	

}
