package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import logic.Whousing;

public interface WhousingMapper {

   String whousingcolumn = " SELECT i.itemnum, i.itemname, w.whousingnum, w.whousingquant, w.whousingprice " 
                     + "FROM item i JOIN whousing w " 
                     + "ON i.itemnum = w.itemnum "
                     + "where w.whousingquant = 0 "
                     + "and w.whousing_code = 1";
   
   @Select(whousingcolumn)
   List<Whousing> select(Map<String, Object> param);

   
   String outwhousing = " SELECT i.itemnum, i.itemname, w.whousingnum, w.whousingquant, i.price " 
         + "FROM item i left JOIN whousing w " 
         + "ON i.itemnum = w.itemnum "
         + "where w.whousingquant = 0 "
         + "and w.whousing_code = 2 ";
   
   @Select(outwhousing)
   List<Whousing> outselect(Map<String, Object> param);
   
   String keepwhousing = " SELECT i.itemnum, i.itemname, w.whousingnum, w.whousingquant "
                  + "FROM item i JOIN whousing w " 
                  + "ON i.itemnum = w.itemnum "
                  + "where w.whousing_code = 1";
   
   @Select(keepwhousing)
   List<Whousing> keepselect(Map<String, Object> param);
   
   String inwhousing = "SELECT i.itemnum, i.itemname, w.whousingnum, w.whousingquant, w.whousingprice " 
                  + "FROM item i left JOIN whousing w " 
                  + "ON i.itemnum = w.itemnum " 
                  + "where w.whousingquant > 0 "
                  + "and w.whousing_code=1"; 
   
   @Select({"<script>", inwhousing
      ,"<if test='whousingnum != null'> where whousingnum=#{whousingnum}</if>"
      ,"<if test='whousingnum == null'> order by whousingnum desc, whousingnum limit #{startrow},#{limit}</if>"
      ,"</script>"})
   List<Whousing> inselect(Map<String, Object> param);
   
   String whousingoutwhousing = "SELECT i.itemnum, i.itemname, w.whousingnum, w.whousingquant, i.price " 
         + "FROM item i left JOIN whousing w " 
         + "ON i.itemnum = w.itemnum " 
         + "where w.whousingquant > 0 "
         + "and w.whousing_code = 2 ";
   
   @Select(whousingoutwhousing)
   List<Whousing> whousingoutwhousing(Map<String, Object> param);
         
   @Select("select ifnull(max(whousingnum),0) from whousing")
   int maxwhousingnum();
   

   @Insert("insert into whousing " 
   + "(whousingnum, itemnum, whousingquant, whousingprice, whousing_code, in_date) "
   + " values (#{whousingnum}, #{itemnum}, #{whousingquant}, #{whousingprice}, 1, now())") 
   void insert(Whousing whousing); //�԰�
   
   
   @Update("update whousing set "
      + "whousingquant=#{whousingquant}, whousingprice=#{whousingprice}, in_date=now() "
      + "where itemnum=#{itemnum} and whousing_code=1" )
   void update(Whousing whousing);
   
   @Insert("insert into whousing " 
      + "(whousingnum, itemnum, whousingquant, whousingprice, whousing_code) "
      + " values (#{whousingnum}, #{itemnum}, 0, 0, 0)") 
   void whousing_st_insert(Map<String, Object> param);

    
   @Insert("insert into whousing "
         + "(whousingnum, itemnum, whousingquant, whousingprice, whousing_code, out_date) "
         + " values (#{whousingnum}, #{itemnum}, #{whousingquant}, #{whousingprice}, 2, now())") 
   void outinsert(Whousing whousing); //���

   @Select(outwhousing+" and w.itemnum=#{itemnum} and w.whousing_code=#{whousing_code}")
   Whousing dbselect(Map<String, Object> param);

   @Insert("insert into whousing " 
         + "(whousingnum, itemnum, whousingquant, whousingprice, whousing_code,in_date) "
         + " values (#{whousingnum}, #{itemnum}, 0, 0, 1,now())")
   void whousing_in_insert(Map<String, Object> param);

   @Insert("insert into whousing " 
         + "(whousingnum, itemnum, whousingquant, whousingprice, whousing_code,out_date) "
         + " values (#{whousingnum}, #{itemnum}, 0, 0, 2,now())")
   void whousing_out_insert(Map<String, Object> param);

   @Select({"<script>"
         ,"select count(*) from whousing "
         ,"<if test='whousingnum != null'> where whousingnum=#{whousingnum}</if>"
         ,"</script>"})
   int count(Map<String, Object> param);


}