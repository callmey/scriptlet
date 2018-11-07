package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import vo.EmpVO;

public class EmpDAO {
	final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:XE";
	
	final String USER = "SCOTT";
	final String PASSWORD = "TIGER";
	
	Connection conn = null;
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	StringBuffer sb = new StringBuffer();
	
	public EmpDAO() {
		try {
			Class.forName(DRIVER);
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("conn :" + conn);
		}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println("DB 연결 실패");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("드라이버 로딩 실패");
		}
	} // 생성자 () end
	
	public EmpVO selectOne(int empno) {
		sb.setLength(0);
		sb.append("select * from emp ");
		sb.append("where empno = ? ");
		
		EmpVO vo = null;
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setInt(1, empno);
			
			rs = pstmt.executeQuery();
			
			rs.next();
			
			
			String ename = rs.getString("ename");
			String job = rs.getString(3);
			int mgr = rs.getInt(4);
			String hiredate = rs.getString(5);
			int sal = rs.getInt(6);
			int comm = rs.getInt(7);
			int deptno = rs.getInt(8);
			
			vo = new EmpVO(empno, ename, job, mgr, hiredate, sal, comm, deptno);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	}
	
	// 데이터 추가
	public void insertOne(EmpVO vo) {
		sb.setLength(0);
		sb.append("insert into emp ");
		sb.append("values(?, ?, ?, ?, ?, ?, ?, ? )");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, vo.getEmpno());
			pstmt.setString(2, vo.getEname());
			pstmt.setString(3, vo.getJob());
			pstmt.setInt(4, vo.getMgr());
			pstmt.setString(5, vo.getHiredate());
			pstmt.setInt(6, vo.getSal());
			pstmt.setInt(7, vo.getComm());
			pstmt.setInt(8, vo.getDeptno());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	} // insertOne() end
	
	// 데이터 수정
	public void updateOne(EmpVO vo) {
		sb.setLength(0);
		sb.append("update emp ");
		sb.append("set ename = ? , job = ? , mgr = ? , hiredate = ? , sal = ? , comm = ? , deptno = ? ");
		sb.append("where empno = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			
			pstmt.setString(1, vo.getEname());
			pstmt.setString(2, vo.getJob());
			pstmt.setInt(3, vo.getMgr());
			pstmt.setString(4, vo.getHiredate());
			pstmt.setInt(5, vo.getSal());
			pstmt.setInt(6, vo.getComm());
			pstmt.setInt(7, vo.getDeptno());
			pstmt.setInt(8, vo.getEmpno());
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	} // updateOne() end
	
	// 데이터 삭제
	public void deleteOne(int empno) {
		sb.setLength(0);
		sb.append("delete from emp ");
		sb.append("where empno = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, empno);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	} // deleteOne() end
	
	// 전체 조회
	public ArrayList selectAll() {
		ArrayList<EmpVO> list = new ArrayList<EmpVO>();

		try {
			sb.append("select * from emp ");
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int empno = rs.getInt(1);
				String ename = rs.getString("ename");
				String job = rs.getString(3);
				int mgr = rs.getInt(4);
				String hiredate = rs.getString(5);
				int sal = rs.getInt(6);
				int comm = rs.getInt(7);
				int deptno = rs.getInt(8);
				
				EmpVO vo = new EmpVO(empno, ename, job, mgr, hiredate, sal, comm, deptno);
				
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;

	} // selectAll() end
}
