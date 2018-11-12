package d20181109;

import dao.ProductDAO;
import vo.ProductVO;

public class ProductMain {
	public static void main(String[] args) {
		ProductDAO dao = new ProductDAO();	
		
		ProductVO vo = new ProductVO(1, "치즈피자", 20000, 50, null, 10, "../Images/cheese.jpg", "../Images/cheese.jpg");
		
		dao.modifyData(vo);
	}
	
}
