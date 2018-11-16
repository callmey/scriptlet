package d20181114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//서블릿 만들기
//1. HttpServlet 상속
//2. do~ override
//3. @WebServlet() : annotation




@WebServlet("/w20181114/loginOk.do")
public class Login extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//전달받은 내용을 추출
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		
		//encoding 
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = resp.getWriter();
		
		//html로 출력
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hobby Check</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>당신의 아이디는 "+ id +" 입니다.</h2>");
		out.println("<h2>당신의 비밀번호는 "+ pw +" 입니다.</h2>");
		out.println("</body>");
		out.println("</html>");
	}
	
}
