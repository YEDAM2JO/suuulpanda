package co.shop.product.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.shop.common.Command;
import co.shop.product.service.ProductService;
import co.shop.product.service.ProductVO;
import co.shop.product.service.Impl.ProductServiceImpl;

public class ProductUpdate implements Command {
    @Override
    public String exec(HttpServletRequest request, HttpServletResponse response) {
        ProductService ps = new ProductServiceImpl();
        ProductVO vo = new ProductVO();
        
        String dir = File.separator + "upload" + File.separator;
        String saveDir = request.getSession().getServletContext().getRealPath(dir);
        int maxSize = 100 * 1024 * 1024;
        
        try {
            MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, "utf-8", new DefaultFileRenamePolicy());
            
            String pfile = multi.getFilesystemName("pfile");
            String ofile = multi.getOriginalFileName("pfile");
            String pfilePath = saveDir + pfile;
            
            vo.setProductImg(ofile);
            vo.setProductImgPath(pfilePath);
            vo.setProductId(multi.getParameter("productId"));
            vo.setProductName(multi.getParameter("productName"));
            vo.setProductKind(multi.getParameter("productKind"));
            vo.setProductDate(Date.valueOf(multi.getParameter("productDate")));
            vo.setProductPrice(Integer.valueOf(multi.getParameter("productPrice")));
            vo.setProductABV(Integer.valueOf(multi.getParameter("productABV")));
            vo.setProductSale(multi.getParameter("productSale"));
            vo.setProductTaste(multi.getParameter("productTaste"));
            vo.setProductSparkling(multi.getParameter("productSparkling"));
            vo.setProductSalePercent(Float.valueOf(multi.getParameter("productSalePercent")));
            vo.setProductSalePrice(Integer.valueOf(multi.getParameter("productSalePrice")));
            
            // Calculate special sale price if product is on sale
            if (multi.getParameter("productSale") != null && multi.getParameter("productSale").equals("Y")) {
                double productPrice = Double.parseDouble(multi.getParameter("productPrice"));
                double productSalePercent = Double.parseDouble(multi.getParameter("productSalePercent"));
                double productSalePrice = productPrice * (1 - productSalePercent);
                vo.setProductSalePrice((int) productSalePrice);
                vo.setProductSale("Y");
            } else {
                vo.setProductSalePrice(Integer.valueOf(multi.getParameter("productPrice")));
                vo.setProductSale("N");
            }
            
            // Update the product in the database
            int result = ps.productUpdate(vo);
            if (result != 0) {
                request.setAttribute("message", "The product has been successfully updated.");
            } else {
                request.setAttribute("message", "Failed to update the product.");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return "productList1.do";
    }
}





