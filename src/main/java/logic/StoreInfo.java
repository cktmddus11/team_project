package logic;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;


public class  StoreInfo {
      private int storeno;
      
      @NotEmpty(message="필수 입력 입니다.")
      private String storename;
      
      @NotEmpty(message="필수 입력 입니다.")
      private String storetel;
      
      @NotEmpty(message="필수 입력 입니다.")
      private String storetime;
      
      @NotEmpty(message="필수 입력 입니다.")
      private String storeadd;
      
      private MultipartFile picfile;
      
      private String storepic;
      
      @NotEmpty(message="필수 입력 입니다.")
      private String mapurl;
      
      @NotEmpty(message="필수 입력 입니다.")
      private String mapiframe;

      public int getStoreno() {
         return storeno;
      }

      public void setStoreno(int storeno) {
         this.storeno = storeno;
      }

      public String getStorename() {
         return storename;
      }

      public void setStorename(String storename) {
         this.storename = storename;
      }

      public String getStoretel() {
         return storetel;
      }

      public void setStoretel(String storetel) {
         this.storetel = storetel;
      }

      public String getStoretime() {
         return storetime;
      }

      public void setStoretime(String storetime) {
         this.storetime = storetime;
      }

      public String getStoreadd() {
         return storeadd;
      }

      public void setStoreadd(String storeadd) {
         this.storeadd = storeadd;
      }

      public MultipartFile getPicfile() {
         return picfile;
      }

      public void setPicfile(MultipartFile picfile) {
         this.picfile = picfile;
      }

      public String getStorepic() {
         return storepic;
      }

      public void setStorepic(String storepic) {
         this.storepic = storepic;
      }

      public String getMapurl() {
         return mapurl;
      }

      public void setMapurl(String mapurl) {
         this.mapurl = mapurl;
      }

      public String getMapiframe() {
         return mapiframe;
      }

      public void setMapiframe(String mapiframe) {
         this.mapiframe = mapiframe;
      }

      @Override
      public String toString() {
         return "StoreInfo [storeno=" + storeno + ", storename=" + storename + ", storetel=" + storetel
               + ", storetime=" + storetime + ", storeadd=" + storeadd + ", picfile=" + picfile + ", storepic="
               + storepic + ", mapurl=" + mapurl + ", mapiframe=" + mapiframe + "]";
      }
      
      
      
}