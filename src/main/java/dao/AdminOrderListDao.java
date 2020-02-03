package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.AdminOrderListMapper;
import logic.AdminOrderList;

@Repository
public class AdminOrderListDao {
   @Autowired
   private SqlSessionTemplate sqlSession;
   private Map<String, Object> param = new HashMap<String, Object>();
    
   public int admin_ordercount(Integer orderstate) {
      param.clear();
      param.put("orderstate",orderstate);
      return sqlSession.getMapper(AdminOrderListMapper.class).count(param);
   }

   public List<AdminOrderList> admin_orderlist(Integer pageNum, Integer orderstate, int limit) {
      param.clear();
      param.put("startrow", (pageNum-1)*limit);
      param.put("limit", limit);
      param.put("orderstate", orderstate);
      return sqlSession.getMapper(AdminOrderListMapper.class).select(param);
   }

   public void admin_orderstateUpdate(String orderno, int orderstate) {
      param.clear();
      param.put("orderno",orderno);
      param.put("orderstate",orderstate);
      sqlSession.getMapper(AdminOrderListMapper.class).orderstateUpdate(param);
   }
}