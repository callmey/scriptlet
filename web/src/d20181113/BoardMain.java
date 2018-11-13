package d20181113;

import dao.BoardV2_DAO;
import vo.BoardVO;

public class BoardMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BoardV2_DAO dao = new BoardV2_DAO();
		int cnt = 0;
		cnt= dao.getTotalCount();
		System.out.println(cnt);
	}

}
