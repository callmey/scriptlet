package d20181115;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/w20181115/cal.do")
public class ServletCal extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	private void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String n1 = req.getParameter("num1");
		String n2 = req.getParameter("num2");
		String cal = req.getParameter("oper");
		
		int result = 0;
		
		if(n1!=null&&n2!=null) {
			
			int num1 = Integer.parseInt(n1);
			int num2 = Integer.parseInt(n2);
			
			/*switch(cal) {
			
			case"+" : 
				result=num1+num2;
				break;
			case"-" : 
				result=num1-num2;
				break;
			case"*" : 
				result=num1*num2;
				break;
			case"/" : 
				result=num1/num2;
				break;
				
			}*/
			
			PrintWriter out = resp.getWriter();
			
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Cal Result</title>");
			out.println("<script type=\"text/javascript\">");
			out.println("var r = document.getElementById(\"result\");");
			out.println("");
			out.println("eval(\"r = "+num1+cal+num2+"\");");
			out.println("</script>");
			out.println("</head>");
			out.println("<body>");
			
			out.println("<h1>계산결과</h1>");
			out.println("<h1 id=\"result\"></h1>");

			
			out.println("</body>");	
			out.println("</html>");
			
			
		}
	}
}
