package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.Admin_ItemMapper;
import logic.Item;

@Repository //@Component + dao 기능
public class Admin_ItemDao {
   @Autowired //spring-db에 있는 sqlSessionTemplate을 주입.
   private SqlSessionTemplate sqlSession;
   private Map<String,Object> param = new HashMap<>();
   
   public void insert(Item item) {
      sqlSession.getMapper(Admin_ItemMapper.class).insert(item);
   }

   public int maxitemnum() {
      return sqlSession.getMapper(Admin_ItemMapper.class).maxitemnum();
   }

   public List<Item> list(Integer pageNum, int limit, String selectvalue) {
      param.clear();
      param.put("startrow", (pageNum - 1) * limit);
      param.put("limit", limit);
      param.put("selectvalue", selectvalue);
      return sqlSession.getMapper(Admin_ItemMapper.class).select(param);
   }

   public Item selectOne(Integer itemnum) {
      param.clear();
      param.put("itemnum", itemnum);
      return sqlSession.getMapper(Admin_ItemMapper.class).select(param).get(0);
   }

   public void update(Item admin_item) {
      sqlSession.getMapper(Admin_ItemMapper.class).update(admin_item);
   }

   public int count(String selectvalue) {
      param.clear();
      param.put("selectvalue", selectvalue);
      return sqlSession.getMapper(Admin_ItemMapper.class).count(param);
   }
}