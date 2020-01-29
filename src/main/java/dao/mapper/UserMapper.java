package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.User;

public interface UserMapper {

	
	@Select({"<script>"
			+ "select *from member "
			+ "<if test='userid != null'> where userid=#{userid}</if>"
			+ "</script>"})
	List<User> select(Map<String, Object> param);

}
