package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import vo.BoardVO;

public class BoardDAO {
	
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	
	public BoardDAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	} // 생성자 end
	
	// 게시글 입력 메소드
	public void addData(BoardVO vo) {
		sb.setLength(0);
		sb.append("insert into board ");
		sb.append("values (board_bno_seq.nextval, ?, ?, ?, ?, sysdate, 0, 0 )");
		
		// status : 0 - 정상글, 1 - 블라인드 처리
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getWriter());
			pstmt.setString(3, vo.getContents());
			pstmt.setString(4, vo.getIp());
			/*pstmt.setInt(5, vo.getStatus());
			pstmt.setInt(6, vo.getHits());*/
			
			pstmt.executeUpdate();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} // addData() end
	
	// 전체 게시글 조회 메소드 
	public ArrayList<BoardVO> getAllData() {
		ArrayList<BoardVO> list = new ArrayList<>();
		
		sb.setLength(0);
		sb.append("select * from board ");
		sb.append("order by bno asc ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int bno = rs.getInt(1);
				String title = rs.getString(2);
				String writer = rs.getString(3);
				String contents = rs.getString(4);
				String ip = rs.getString(5);
				String regdate = rs.getString(6);
				int status = rs.getInt(7);
				int hits = rs.getInt(8);
				
				BoardVO vo = new BoardVO(bno, title, writer, contents, ip, regdate, status, hits);
				
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
