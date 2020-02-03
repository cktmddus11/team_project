package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Item;

public interface ItemMapper {
	String itemcol = "select itemnum, itemname, price, itemfile1url, itemfile2url,"
			+ "itemfile3url, category, subcategory, character_c, regdate from item";
	@Select("<script>"
			+ itemcol+" where 1 = 1"
			+ "<if test='category!= null'>and category = #{category}</if>"
			+ "<if test='subcategory != null'>and subcategory = #{subcategory}</if>"
			+ "<if test='character_c != null'>and character_c = #{character_c}</if>"
			+ "</script>")
	List<Item> itemlist(Map<String, Object> param);
	
	
	@Select("<script>select count(*) from item where 1 = 1" + 
			"<if test='category!= null'>and category = #{category}</if>" + 
			"<if test='subcategory != null'>and subcategory = #{subcategory}</if>" + 
			"<if test='character_c != null'>and character_c = #{character_c}</if>" +
			"</script>")
	int itemlistcount(Map<String, Object> param);

}
