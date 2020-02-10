package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Cart;
import logic.ItemSet;

public interface MypageMapper {

	@Select("select *from cart where userid = #{userid}")
	List<ItemSet> cartview(Map<String, Object> param);
}
