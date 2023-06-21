package co.shop.orderDetail.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderDetailVO {
   
   private int orderDetailId;
   private int orderId;
   private String productName;
   private int productCount;

   
   
}