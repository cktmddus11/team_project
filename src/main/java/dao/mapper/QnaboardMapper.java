package dao.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import logic.Qnaboard;

public interface QnaboardMapper {
	@Insert("insert into qnaboard (userid,a_content, qnafileUrl, password) values(#{userid},#{a_content}, #{qnafileUrl}, #{password})")
	void qnainsert(Qnaboard qnaboard);
	
	@Select({"<script>",
		"select qnano, q_subject, q_content, a_content, qnafileUrl, checkin from qnaboard"
		,"<if test='content != null'> where a_content=#{content} </if>"
		,"<if test='limit != null'> order by qnano</if>"
		,"</script>"})
	List<Qnaboard> qnaselect(Map<String, Object> param);
	
	//등록 건수
	@Select({"<script>","select count(*) from qnaboard"
		,"<if test='content != null'> where  a_content=#{content} </if>"
		,"</script>"})
	int count(Map<String, Object> param);

	Qnaboard getboard(Map<String, Object> param);
}