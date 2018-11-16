package d20181115;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿작성 복습
//1. HttpServlet 상속
//2. doget 오버라읻드
//3. WebServlet()annotation

@WebServlet("/w20181115/Thursday.do")
public class ServletEx01 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		doProcess(req, resp);
	}//doGet() end
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doProcess(req, resp);
	}//doPost() end
	
	//get,post 어떤 방식으로 들어오던지 다 받을 수 있게 처리
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	//encoding처리
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		// 사용자로부터 전달받은 메세지를 출력하기 위해 변수 생성
		// msg 변수에 사용자가 parameter 에 담아서 보낸 값을 대입
		
		String msg= req.getParameter("msg");
		
		//출력객체
		PrintWriter out = resp.getWriter();
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title>servletEx01</title>");
		out.println("</head>");
		out.println("<body>");
		
		out.println("<h1>Today is Thursday</h1>");
		out.println("<h1>"+msg+"</h1>");
		
		
		out.println("</body>");
		out.println("</html>");
		
	}
}
