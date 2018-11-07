package d20181107;

import java.util.ArrayList;

import dao.EmpDAO;
import vo.EmpVO;

public class EmpMain {
	public static void main(String[] args) {
		EmpDAO dao = new EmpDAO();
		
		//EmpVO vo = dao.selectOne(7900);
		//System.out.println(vo.getEmpno() + "\t" +  vo.getEname() + "\t" +  vo.getSal() + "\t" + vo.getMgr()
		//					+ "\t" + vo.getJob() + "\t" + vo.getHiredate() + "\t" + vo.getComm());
		
		//EmpVO vo2 = new EmpVO();
		//vo2.setEmpno(1004);
		//vo2.setEname("양다연");
		//vo2.setJob("student");
		//vo2.setMgr(7900);
		//vo2.setHiredate("2018/11/07");
		//vo2.setSal(8000);
		//vo2.setComm(6000);
		//vo2.setDeptno(30);
		
		//dao.insertOne(vo2);
		
		//EmpVO vo3 = new EmpVO();
		//vo3.setEmpno(1004);
		//vo3.setEname("홍길동");
		//vo3.setJob("student");
		//vo3.setMgr(7902);
		//vo3.setHiredate("2018/11/11");
		//vo3.setSal(9000);
		//vo3.setComm(200);
		//vo3.setDeptno(10);
		
		//dao.updateOne(vo3);
		
		//dao.deleteOne(1004);
		
		ArrayList<EmpVO> list = dao.selectAll();
		
		for(EmpVO vo : list) {
			System.out.println(vo.getEmpno() + "\t" +  vo.getEname() + "\t" +  vo.getSal() + "\t" + vo.getMgr()
								+ "\t" + vo.getJob() + "\t" + vo.getHiredate() + "\t" + vo.getComm());
		}
	
	}
}
