package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import connection.OracleXEConnection;
import vo.BoardVO;

public class BoardV2_DAO {
	StringBuffer sb = new StringBuffer();
	ResultSet rs = null;
	PreparedStatement pstmt = null;
	Connection conn = null;
	BoardVO vo = new BoardVO();
	
	public BoardV2_DAO() {
		conn = OracleXEConnection.getInstance().getConnection();
	}//생성자 end
	
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
			/*
			 * pstmt.setInt(5, vo.getStatus()); pstmt.setInt(6, vo.getHits());
			 */

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

			while (rs.next()) {
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
	} // getAllData() end
	
	
	// 페이징 처리를 위한 전체 조회 메소드
	public ArrayList<BoardVO> getAllData(int startNo, int endNo) {
		ArrayList<BoardVO> list = new ArrayList<>();
		//1. rownum기준으로 줄을 세운다 select * from board order by rownum desc where rownum <= end No
		//2. select rownum rn, * from ( select * from board order by rownum desc where rownum <= end No)
		//	where rn >=startNo
		//3. select * from(select rownum rn, * from ( select * from board order by rownum desc where rownum <= end No)
		//	where rn >=startNo)
		sb.setLength(0);
		sb.append("select * ");
		sb.append("from (select rownum rn, bno, title, writer, contents, ip, hits, regdate, status ");
		sb.append("from (select * ");
		sb.append("from board ");
		sb.append("order by rownum desc ) ");
		sb.append("where rownum <= ? ) ");
		sb.append("where rn >= ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, endNo);
			pstmt.setInt(2, startNo);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				int bno = rs.getInt("bno");
				String title = rs.getString("title");
				String writer = rs.getString("writer");
				String contents = rs.getString("contents");
				String ip = rs.getString("ip");
				String regdate = rs.getString("regdate");
				int status = rs.getInt("status");
				int hits = rs.getInt("hits");
				BoardVO vo = new BoardVO(bno, title, writer, contents, ip, regdate, status, hits);
				list.add(vo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	} // getAllData() end
	
	
	// 데이터 한건 조회 메소드

	public BoardVO getData(int bno) {
		sb.setLength(0);
		sb.append("select * from board ");
		sb.append("where bno = ? ");

		BoardVO vo = null;

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);

			rs = pstmt.executeQuery();

			rs.next();

			// int bno = rs.getInt(1);
			String title = rs.getString(2);
			String writer = rs.getString(3);
			String contents = rs.getString(4);
			String ip = rs.getString(5);
			String regdate = rs.getString(6);
			int status = rs.getInt(7);
			int hits = rs.getInt(8);

			vo = new BoardVO(bno, title, writer, contents, ip, regdate, status, hits);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return vo;
	} // getData() end
	
	// 게시글 수정 메소드
	public void modifyData(BoardVO vo) {
		sb.setLength(0);
		sb.append("update board ");
		sb.append("set title = ? , contents = ? ");
		sb.append("where bno = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContents());
			pstmt.setInt(3, vo.getBno());

			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // modifyData() end

	// 게시글 삭제 메소드
	public void deleteData(int bno) {
		sb.setLength(0);
		sb.append("delete from board ");
		sb.append("where bno = ? ");

		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);

			pstmt.executeQuery();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // deleteData() end

	// 총 게시물 수 파악 메소드
	public int getTotalCount() {
		sb.setLength(0);
		sb.append("select count(*) "); // sb.append("select count(*) cnt ");
		sb.append("from board ");

		int cnt = 0;

		try {
			pstmt = conn.prepareStatement(sb.toString());
			rs = pstmt.executeQuery();
			rs.next();
			cnt = rs.getInt(1); // cnt = rs.getInt("cnt"); 별칭 형성하고 호출가능

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return cnt;
	} // getTotalCount() end
	
	// 조회수 증가 메소드
	public void raiseHits(int bno) {
		sb.setLength(0);
		sb.append("update board ");
		sb.append("set hits = hits+1 ");
		sb.append("where bno = ? ");
		
		try {
			pstmt = conn.prepareStatement(sb.toString());
			pstmt.setInt(1, bno);
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	} // raiseHits() end
}// class() end