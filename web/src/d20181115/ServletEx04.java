package d20181115;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/servlet.php")
public class ServletEx04 extends HttpServlet{
	
	//객체 직렬화를 위한 코드
	
	private static final long SerialVersionUID= 1L;
	
	
	//init 안쓰려면 생성자 이용해서 초기화
	public ServletEx04() {
		
	}

		@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
		
		resp.getWriter().append("served : ").append(req.getContextPath());
			//기본형(default)
		//Request-URI
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			// TODO Auto-generated method stub
		super.doPost(req, resp);
		
		//body에 내용을 숨김
		//Request-body에 데이터를 담아서 서버로 전송하면서 요청
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPut(req, resp);
		
		//post로 전달된 내용을 get으로 지정한 곳에 저장
		//Request body 내용을 Request URI로 보냄
	}
		
	@Override
	protected void doHead(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doHead(arg0, arg1);
		
		//Request-URI방식과 동일함 서버의 응답시 Response Header만을 전송
		
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doDelete(req, resp);
		
		//Request URI의 내용 삭제
	}
	
	@Override
	protected void doOptions(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doOptions(arg0, arg1);
		// 서버가 제공하는 통신 옵션에 대한 정보를 요청
	}
	
	@Override
	protected void doTrace(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doTrace(arg0, arg1);
		
		//요청 메세지가 거쳐간 경로에 대한 정보를 알려줌
	}

}
