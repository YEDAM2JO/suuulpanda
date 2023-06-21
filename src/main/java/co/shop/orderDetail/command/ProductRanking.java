package co.shop.orderDetail.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.shop.common.Command;
import co.shop.orderDetail.service.OrderDetailService;
import co.shop.orderDetail.service.OrderDetailVO;
import co.shop.orderDetail.service.Impl.OrderDetailServiceImpl;



public class ProductRanking implements Command{

   

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      OrderDetailService od = new OrderDetailServiceImpl();
      List<OrderDetailVO> orders = new ArrayList<>();
      orders = od.getProductRanking();
      
      request.setAttribute("orders", orders);
      return "product/productRanking";
}
}
