package d20181108;

import dao.MemberDAO;

public class MemberMain {
	public static void main(String[] args) {
		MemberDAO dao = new MemberDAO();
		
		dao.deleteData(1);
	}
}
