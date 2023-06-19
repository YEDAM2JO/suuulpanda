package co.shop.product.command;

import java.sql.Date;
import java.io.File;
import java.io.IOException;

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
        // 게시물을 데이터베이스에 수정해서 저장한다.
        ProductService ps = new ProductServiceImpl();
        ProductVO vo = new ProductVO();
        
       

        
        String dir = File.separator + "upload" + File.separator;
        String saveDir = request.getSession().getServletContext().getRealPath(dir);
        int maxSize = 100 * 1024 * 1024;
        
        try {
            System.out.println("Save Directory: " + saveDir);

            MultipartRequest multi = new MultipartRequest(request,
                                                          saveDir,
                                                          maxSize,
                                                          "utf-8",
                                                          new DefaultFileRenamePolicy());
            
            String pfile = multi.getFilesystemName("pfile");
            pfile = saveDir + pfile;
            
//            System.out.println(multi.getParameter("productId"));
//            System.out.println(multi.getParameter("productName"));
//            System.out.println(multi.getParameter("productKind"));
//            System.out.println(multi.getOriginalFileName("pfile"));
//            System.out.println(vo.getProductImg());
//            System.out.println(vo.getProductImgPath());
//            System.out.println(multi.getParameter("productDate"));
//            System.out.println(multi.getParameter("productPrice"));
//            System.out.println(multi.getParameter("productABV"));
//            System.out.println(multi.getParameter("productSale"));
//            System.out.println(multi.getParameter("productSparkling"));
//            System.out.println(multi.getParameter("productSalePercent"));
//            System.out.println(multi.getParameter("productSalePrice"));

            
            vo.setProductImgPath(pfile);
            vo.setProductId(multi.getParameter("productId"));
            vo.setProductName(multi.getParameter("productName")); // 수정: productName으로 변경
            vo.setProductKind(multi.getParameter("productKind"));
            String ofile = multi.getOriginalFileName("pfile");
        	vo.setProductImg(ofile);
            vo.setProductDate(Date.valueOf(multi.getParameter("productDate")));
            vo.setProductPrice(Integer.valueOf(multi.getParameter("productPrice")));


           
            vo.setProductABV(Integer.valueOf(multi.getParameter("productABV")));
            vo.setProductSale(multi.getParameter("productSale"));
            vo.setProductTaste(multi.getParameter("productTaste"));
            vo.setProductSparkling(multi.getParameter("productSparkling"));
            vo.setProductSalePercent(Float.valueOf(multi.getParameter("productSalePercent")));
            vo.setProductSalePrice(Integer.valueOf(multi.getParameter("productSalePrice")));

            
         
            if (!pfile.equals(null) ) {
            	request.setAttribute("message", "정상적으로 수정되었습니다.");
            }
            else {
            	request.setAttribute("message", "게시글 수정 실패하였습니다.");
            }
        
            int n = ps.productUpdate(vo);
            if (n != 0) {
                request.setAttribute("message", "정상적으로 수정되었습니다.");
            } else {
                request.setAttribute("message", "게시글 수정 실패하였습니다.");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        return "productList1.do";
    }
}
