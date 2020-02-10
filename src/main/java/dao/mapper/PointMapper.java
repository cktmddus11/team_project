package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import logic.Point;

public interface PointMapper {

   @Select(" select count(*) from point where userid=#{kemail}")
   int count(Map<String, Object> param);

   @Select(" select * from point where userid=#{kemail}")
   List<Point> select(Map<String, Object> param);

   @Select(" select sum(point) from point where userid=#{kemail}")
   int totalpoint(Map<String, Object> param);

}