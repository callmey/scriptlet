package d20181115;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.util.resources.CalendarData;

//now.do 입력 - 서블릿 실행하면 현재 시각을 브라우저에 출력해보세요.


@WebServlet("/w2018115/now.do")
public class ServletEx02 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}//doGet() end
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}//doPost() end
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		Date date = new Date();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 hh시 mm분 ss초");
		
		String now = sdf.format(date);
		
		/*Runnable r = new Runnable() {
			
			@Override
			public void run() {
				// TODO Auto-generated method stub
				
			}
		};
		Thread th = new Thread(r);
		th.start();*/
		
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
		out.println("<title>servletEx02</title>");
		out.println("</head>");
		out.println("<body>");
				
		out.println("<h1>Now Time is..</h1>");
		if(msg.equals("now.do")) {
			//out.println("<h1>"+now+"</h1>");
			
			out.println("<script type=\"text/javascript\">");
			out.println("window.onload = function(){");
			out.println("var time = document.getElementById(\"clock\");");
			out.println("window.setInterval(function(){");
			out.println("time.innerHTML = new Date().toString();");
			out.println("},1000);");
			out.println("}");
			out.println("</script>");
			out.println("<h1 id=\"clock\"></h1>");
			
		}else {
			out.println("값 없음");
		}
	
				
		out.println("</body>");
		out.println("</html>");
			
	}
}
