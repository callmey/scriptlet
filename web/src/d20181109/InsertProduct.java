package d20181109;

import dao.ProductDAO;
import vo.ProductVO;

public class InsertProduct {
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();
		
		ProductVO vo = new ProductVO();
		vo.setPname("고구마피자");
		vo.setPrice(18000);
		vo.setDcratio(10);
		vo.setQty(5);
		vo.setImgfile("../Images/go.jpg");
		vo.setBgfile("../Images/go.jpg");
		
		dao.addData(vo);
		
		/*vo.setPname("쉬림프피자");
		vo.setPrice(18000);
		vo.setDcratio(10);
		vo.setQty(5);
		vo.setImgfile("../Images/shrimp.jpg");
		vo.setBgfile("../Images/shrimp.jpg");
		
		dao.addData(vo);*/
	}
}
