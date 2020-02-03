package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import dao.mapper.ItemMapper;
import logic.Item;
@Repository
public class ItemDao {
	@Autowired
	private SqlSessionTemplate sqlSession;
	private Map<String, Object> param = new HashMap<String, Object>();
	
	public List<Item> itemlist(Integer category, Integer subcategory, Integer character) {
		param.clear();
		param.put("category", category);
		param.put("subcategory", subcategory);
		param.put("character_c", character);
		return sqlSession.getMapper(ItemMapper.class).itemlist(param);
	}

	public int itemlistcount(Integer category, Integer subcategory, Integer character) {
		param.clear();
		param.put("category", category);
		param.put("subcategory", subcategory);
		param.put("character_c", character);
		return sqlSession.getMapper(ItemMapper.class).itemlistcount(param);
	}
	
	
}
