package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.UserMapper;
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
			return true;
		}else {
			return false;
		}
	}

	
	
}
