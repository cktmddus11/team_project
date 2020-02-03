package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.UserMapper;
import exception.LoginException;
import logic.User;

@Repository 
public class UserDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<String, Object>();
	
	public boolean selectOne(String kemail) {
		param.clear();
		param.put("userid", kemail);
		List<User> list = sqlSession.getMapper(UserMapper.class).select(param);
		if(list == null || list.isEmpty()) {
			return false;
		}else {
			return true;
		}
	}

	public void memberInsert(User user) {
		sqlSession.getMapper(UserMapper.class).memberInsert(user);
	}

	//관리자 회원 정보 조회 : 아직 안씀
	   public User selectOne2(String userid) {
			param.clear();
			param.put("userid", userid);
			List<User> list = sqlSession.getMapper(UserMapper.class).select(param);
			if(list == null || list.isEmpty()) {
				throw new LoginException("해당 아이디 없음","");
			} else 	return list.get(0);		
		}
	   
	   public List<User> list() {
		   return sqlSession.getMapper(UserMapper.class).select(null);
	   }
	   
	   public int numcntadd() {
		   return sqlSession.getMapper(UserMapper.class).numcntadd();
	   }
	
}
