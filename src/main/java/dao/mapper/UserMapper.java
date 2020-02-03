package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.User;

public interface UserMapper {

	
	@Select({"<script>"
			+ "select *from member "
			+ "<if test='userid != null'> where userid=#{userid}</if>"
			+ "</script>"})
	List<User> select(Map<String, Object> param);

	@Insert("insert into member (userid, username, gender, member_code) values (#{userid}, #{username}, #{gender}, #{member_code})")
	void memberInsert(User user);
	
	@Select("select ifnull(max(userno),0) from member")
	int numcntadd(); 
	
	
	

}
