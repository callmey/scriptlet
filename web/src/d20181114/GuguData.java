package d20181114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/w20181114/GuguData.do")
public class GuguData extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String d = req.getParameter("dan");
		
		if(d!=null) {
			
			int dan = Integer.parseInt(d);
			
			PrintWriter out = resp.getWriter();
			
			//html로 출력
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Hobby Check</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h2> 구구단 "+d+"단 출력 </h2>");
			for(int i = 1;i<10;i++) {
				out.println("<h2>"+dan+" * "+i+" = "+(dan*i)+"</h2>");
			}
			out.println("</body>");
			out.println("</html>");
		
		}
		
	}
}
