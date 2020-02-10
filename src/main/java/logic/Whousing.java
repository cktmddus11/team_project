package logic;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Whousing {
   private List<Whousing> whoushinglist = new ArrayList<Whousing>();
   private Item item;
   private int whousingnum;
   private int itemnum;
   private int whousingquant;
   private int whousingprice;
   private int whousing_code;
   private Date whousing_date;
   
   private String itemname;
   private int price;
   
   public void push(Whousing whousing) {
      for(Whousing w : whoushinglist) {
         if(w.getItem().getItemnum() == whousing.getItem().getItemnum()) {
            w.setWhousingquant(w.getWhousingquant() + whousing.getWhousingquant());
            return;
         }
      }
   }
   
   public List<Whousing> getWhoushinglist() {
      return whoushinglist;
   }

   public void setWhoushinglist(List<Whousing> whoushinglist) {
      this.whoushinglist = whoushinglist;
   }

   public Item getItem() {
      return item;
   }
   public void setItem(Item item) {
      this.item = item;
   }
   public int getWhousingnum() {
      return whousingnum;
   }
   public void setWhousingnum(int whousingnum) {
      this.whousingnum = whousingnum;
   }
   public int getItemnum() {
      return itemnum;
   }
   public void setItemnum(int itemnum) {
      this.itemnum = itemnum;
   }
   public int getWhousingquant() {
      return whousingquant;
   }
   public void setWhousingquant(int whousingquant) {
      this.whousingquant = whousingquant;
   }
   public int getWhousingprice() {
      return whousingprice;
   }
   public void setWhousingprice(int whousingprice) {
      this.whousingprice = whousingprice;
   }
   public int getWhousing_code() {
      return whousing_code;
   }
   public void setWhousing_code(int whousing_code) {
      this.whousing_code = whousing_code;
   }
   public Date getWhousing_date() {
      return whousing_date;
   }
   public void setWhousing_date(Date whousing_date) {
      this.whousing_date = whousing_date;
   }
   public String getItemname() {
      return itemname;
   }
   public void setItemname(String itemname) {
      this.itemname = itemname;
   }

   public int getPrice() {
      return price;
   }

   public void setPrice(int price) {
      this.price = price;
   }
   
   
}