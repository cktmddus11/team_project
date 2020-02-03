package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.AdminOrderList;


public interface AdminOrderListMapper {
	
		@Select({"<script>"
				+ " select count(*) from orderlist"
				+ "<if test='orderstate!=null'>"
				+ " where orderstate = #{orderstate}"
				+ "</if>"
				+ "</script>"})
		int count(Map<String, Object> param);
		
		@Select({"<script>"
				+ " SELECT OL.orderno, OI.price, OI.quantity, I.itemname, I.itemfile1url, OL.orderdate, OL.orderstate"
				+ " FROM orderlist OL JOIN orderitem OI"
				+ " ON OL.orderno = OI.orderno"
				+ " JOIN item I ON OI.itemnum = I.itemnum"
				+ "<if test='orderstate!=null'>"
				+ " where OL.orderstate = #{orderstate}"
				+ "</if>"
//				+ " order by orderno desc, orderno limit #{startrow},#{limit}"
				+ "</script>"})
		List<AdminOrderList> select(Map<String, Object> param);

		@Update(" update orderlist set orderstate= #{orderstate} where orderno= #{orderno}")
		void orderstateUpdate(Map<String, Object> param);

}
