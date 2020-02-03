package dao.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Orderlist;

public interface OrderlistMapper {

	@Select("select *from orderlist where orderno = #{orderno} "
			+ "and userid=#{userid} and payname=#{payname}")
	Orderlist orderCheck(Map<String, Object> param);

}
