package logic;

import org.hibernate.validator.constraints.NotEmpty;

public class Addr{
   private int address_code;
   private String userid;
   @NotEmpty(message = "도로명 주소는 필수 입력입니다.")
   private String address;
   @NotEmpty(message = "나머지 주소도 입력 해주세요.")
   private String restaddress;
   public int getAddress_code() {
      return address_code;
   }
   public void setAddress_code(int address_code) {
      this.address_code = address_code;
   }
   public String getUserid() {
      return userid;
   }
   public void setUserid(String userid) {
      this.userid = userid;
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
   @Override
   public String toString() {
      return "Address [address_code=" + address_code + ", userid=" + userid + ", address=" + address
            + ", restaddress=" + restaddress + "]";
   }
   
   
}