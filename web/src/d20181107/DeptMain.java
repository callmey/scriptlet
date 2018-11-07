package d20181107;

import java.util.ArrayList;

import dao.DeptDAO;
import vo.DeptVO;

public class DeptMain {
	public static void main(String[] args) {
		DeptDAO dao = new DeptDAO();
		
		//DeptVO vo = dao.selectOne(10);
		
		//System.out.println(vo.getDeptno() + "\t" + vo.getDname() + "\t" + vo.getLoc());
		
		//DeptVO vo2 = new DeptVO();
		//vo2.setDeptno(50);
		//vo2.setDname("영업2");
		//vo2.setLoc("서울");
		
		//dao.insertOne(vo2);
		
		System.out.println("------------------------------");
		DeptVO vo3 = new DeptVO();
		//vo3.setDeptno(50);
		//vo3.setDname("영업2");
		//vo3.setLoc("부산");
		
		//dao.updateOne(vo3);

		System.out.println("------------------------------");
		//dao.deleteOne(50);
		
		System.out.println("------------------------------");
		ArrayList<DeptVO> list = dao.selectAll();
		
		for(DeptVO vo : list) {
			System.out.println(vo.getDeptno() + "\t" + vo.getDname() + "\t" + vo.getLoc());			
		}
		
	}
}
