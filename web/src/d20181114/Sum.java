package d20181114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/w20181114/sum.do")
public class Sum extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int sum = 0;
		String n = req.getParameter("num");
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		if(n!=null) {
			int num = Integer.parseInt(n);
			
			for(int i = 1; i<=num;i++) {
				
				sum +=i;
			}
			
			PrintWriter out = resp.getWriter();
			
			//html로 출력
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Hobby Check</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h2>1부터 "+ num +" 까지의 합은"+sum+"입니다.</h2>");
			out.println("</body>");
			out.println("</html>");
			
		}
		
	}
}
