package logic;

import java.util.Date;

public class Orderlist {
	private String orderno;
	private String userid;
	private Date datepay;
	private String payname;
	private String address;
	private String restaddress;
	private String phonenum;
	private String username;
	private Date orderdate;
	private int orderstate;
	private int userpoint;
	private int selectpay;
	
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getUserpoint() {
		return userpoint;
	}
	public void setUserpoint(int userpoint) {
		this.userpoint = userpoint;
	}
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public Date getDatepay() {
		return datepay;
	}
	public void setDatepay(Date datepay) {
		this.datepay = datepay;
	}
	public String getPayname() {
		return payname;
	}
	public void setPayname(String payname) {
		this.payname = payname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRestaddress() {
		return restaddress;
	}
	public void setRestaddress(String restaddress) {
		this.restaddress = restaddress;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public Date getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Date orderdate) {
		this.orderdate = orderdate;
	}
	public int getOrderstate() {
		return orderstate;
	}
	public void setOrderstate(int orderstate) {
		this.orderstate = orderstate;
	}
	public int getSelectpay() {
		return selectpay;
	}
	public void setSelectpay(int selectpay) {
		this.selectpay = selectpay;
	}
	@Override
	public String toString() {
		return "Orderlist [orderno=" + orderno + ", userid=" + userid + ", datepay=" + datepay + ", payname=" + payname
				+ ", address=" + address + ", restaddress=" + restaddress + ", phonenum=" + phonenum + ", username="
				+ username + ", orderdate=" + orderdate + ", orderstate=" + orderstate + ", userpoint=" + userpoint
				+ ", selectpay=" + selectpay + "]";
	}
	
	
	
	
}
