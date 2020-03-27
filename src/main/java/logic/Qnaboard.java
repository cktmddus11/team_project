package logic;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

public class Qnaboard {
	private int qnano; //문의 번호
	private String userid; 
	private int filter; //구분코드
	@NotEmpty(message="문의 제목을 입력하세요.")
	private String q_subject;
	@NotEmpty(message="문의 내용을 입력하세요.")
	private String q_content;
	@NotEmpty(message="답변 내용을 입력하세요.")
	private String a_content;
	private MultipartFile qnafile1;
	private String qnafileUrl;
	private int checkin;	
	@NotEmpty(message="비밀번호를 입력하세요")
	private String password;
	
	//setter, getter, toString
	public int getQnano() {
		return qnano;
	}
	public void setQnano(int qnano) {
		this.qnano = qnano;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getFilter() {
		return filter;
	}
	public void setFilter(int filter) {
		this.filter = filter;
	}
	public String getQ_subject() {
		return q_subject;
	}
	public void setQ_subject(String q_subject) {
		this.q_subject = q_subject;
	}
	public String getQ_content() {
		return q_content;
	}
	public void setQ_content(String q_content) {
		this.q_content = q_content;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	public MultipartFile getQnafile1() {
		return qnafile1;
	}
	public void setQnafile1(MultipartFile qnafile1) {
		this.qnafile1 = qnafile1;
	}
	public String getQnafileUrl() {
		return qnafileUrl;
	}
	public void setQnafileUrl(String qnafileUrl) {
		this.qnafileUrl = qnafileUrl;
	}
	public int getCheckin() {
		return checkin;
	}
	public void setCheckin(int checkin) {
		this.checkin = checkin;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Qnaboard [qnano=" + qnano + ", userid=" + userid + ", filter=" + filter + ", q_subject=" + q_subject
				+ ", q_content=" + q_content + ", a_content=" + a_content + ", qnafile1=" + qnafile1 
				+ ", qnafileUrl=" + qnafileUrl + ", checkin=" + checkin + ", password=" + password + "]";
	}
}