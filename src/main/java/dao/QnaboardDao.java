package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.QnaboardMapper;
import logic.Qnaboard;

@Repository 
public class QnaboardDao {
   @Autowired
   private SqlSessionTemplate sqlSession;
   private Map<String, Object> param = new HashMap<String, Object>();
  
   public void qnainsert(Qnaboard qnaboard) {
	   sqlSession.getMapper(QnaboardMapper.class).qnainsert(qnaboard); 
   }
	public List<Qnaboard> list(Integer pageNum, int limit, String content) { //qna리스트
		param.clear();
		param.put("startrow", (pageNum-1)*limit);
		param.put("limit", limit);
		param.put("content", content);
		return sqlSession.getMapper(QnaboardMapper.class).qnaselect(param);
	}
	public int count(String content) { //전체 건수
		param.clear();
		param.put("content", content);
		return sqlSession.getMapper(QnaboardMapper.class).count(param);
	}
}