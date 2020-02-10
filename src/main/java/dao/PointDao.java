package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ChgMapper;
import dao.mapper.PointMapper;
import logic.Point;

@Repository
public class PointDao {
   @Autowired
      private SqlSessionTemplate sqlSession;
      private Map<String, Object> param = new HashMap<String, Object>();
         
   public int pointlistcount(String kemail) {
      param.clear();
      param.put("kemail", kemail);
      return sqlSession.getMapper(PointMapper.class).count(param);
   }

   public List<Point> pointlist(String kemail, Integer pageNum, int limit) {
        param.clear();
         param.put("startrow", (pageNum-1)*limit);
         param.put("limit", limit);
         param.put("kemail", kemail);
         return sqlSession.getMapper(PointMapper.class).select(param);
   }

   public int totalpoint(String kemail) {
      param.clear();
      param.put("kemail", kemail);
      return sqlSession.getMapper(PointMapper.class).totalpoint(param);
   }

	public void addPoint(String userid,int pointnum, int price, int quantity, int usepoint) {
		  param.clear();
		  param.put("userid", userid);
		  param.put("pointtext", "상품 구매에 의한 포인트");
		  param.put("pointnum", pointnum);
		  param.put("point", (price*quantity)-usepoint);
		sqlSession.getMapper(PointMapper.class).addPoint(param);
	}

	public int pointmax(String userid) {
		param.clear();
		param.put("userid", userid);
		return sqlSession.getMapper(PointMapper.class).max(param);
	}

}