package d20181114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Servlet : 웹에서 동작하는 작은 자바 프로그램
//Servlet을 만들어서 사용하려면 상속받아서 씀

//main이 없으니 자바 app은 아니고 그렇다고 서버 올려도 띄울게없다...

//그래서!!!..webservlet으로 주소를 만들어준다. annotaion! annotaion은 ;붙히지 않는다. 
//그리고 파일명 앞에 /빠지면 동작x, 같은 파일명이 있어도 동작 x
@WebServlet("/hello2.html")
public class HelloServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// req : 요청객체 (내가 브라우저에게..)
		// response : 응답 객체
		
		//자바를 통해 직접 전달.출력용 I/O
		PrintWriter out = resp.getWriter(); //출력용 내 자바 프로그램에서 브라우저에게 넘겨야하니까..resp
		
		
		//HTML 형식으로 사용 가능함
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello Servlet</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Hello Servlet World</h1>");
		out.println("</body>");
		out.println("</html>");
	}
}
