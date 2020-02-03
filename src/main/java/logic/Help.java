package logic;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Help {
	private int qnano;
	private User user; // userid만 db에 넣
	@NotEmpty(message="제목을 입력해주세요")
	private String qnasubject;
	@NotEmpty(message="내용을 입력하세요")
	private String qcontent; // notice
	/*@NotEmpty(message="내용을 입력하세요")
	private String fcontent; // faq 
*/	
	private String userid;
	
	private MultipartFile qnafile1;
	private String qnafileurl;
	
	private int boardcode; // 공지사항1, QNA 2, 1:1 3
	private Date boarddate;
	
	private int filter; // 배송1, 교환/반품/환불2, 기타3, 상품4, 주문결제5
/*	@NotEmpty(message="답변 내용을 입력하세요")
	private String acontent;*/
	private int checkin; // 1:1 답변 승인여부 확인
	
	

	public MultipartFile getQnafile1() {
		return qnafile1;
	}
	public void setQnafile1(MultipartFile qnafile1) {
		this.qnafile1 = qnafile1;
	}
	public String getQnafileurl() {
		return qnafileurl;
	}
	public void setQnafileurl(String qnafileurl) {
		this.qnafileurl = qnafileurl;
	}
	/*public String getFcontent() {
		return fcontent;
	}
	public void setFcontent(String fcontent) {
		this.fcontent = fcontent;
	}*/
	public Date getBoarddate() {
		return boarddate;
	}
	public void setBoarddate(Date boarddate) {
		this.boarddate = boarddate;
	}
	public int getQnano() {
		return qnano;
	}
	public void setQnano(int qnano) {
		this.qnano = qnano;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
		this.userid = user.getUserid();
	}
	public String getUserid() {
		return userid;
	}
	public String getQnasubject() {
		return qnasubject;
	}
	public void setQnasubject(String qnasubject) {
		this.qnasubject = qnasubject;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}

	public int getFilter() {
		return filter;
	}
	public void setFilter(int filter) {
		this.filter = filter;
	}
	/*public String getAcontent() {
		return acontent;
	}
	public void setAcontent(String acontent) {
		this.acontent = acontent;
	}*/
	public int getCheckin() {
		return checkin;
	}
	public void setCheckin(int checkin) {
		this.checkin = checkin;
	}
	
	public int getBoardcode() {
		return boardcode;
	}
	public void setBoardcode(int boardcode) {
		this.boardcode = boardcode;
	}
	@Override
	public String toString() {
		return "Help [qnano=" + qnano + ", userid=" + userid+", user=" + user + ", qnasubject=" + qnasubject + ", qcontent=" + qcontent
				+ ", qnafile1=" + qnafile1 + ", qnafileurl=" + qnafileurl + ", boardcode="
				+ boardcode + ", boarddate=" + boarddate + ", filter=" + filter 
				+ ", checkin=" + checkin + "]";
	}
	
	
	
	
}
