package d20181114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/w20181114/movie.do")
public class Movie extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String name = req.getParameter("name");
		
		PrintWriter out = resp.getWriter();
		
		//html로 출력
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Movie Select</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2> 당신이 선택한 영화 </h2>");
		
		if(name.equals("창궐")) {
			out.println("<img style='width:500px; height: 700px;' src='./movie/movie_image1.jpg' /> ");
		}
		else if(name.equals("암수살인")) {
			out.println("<img style='width:500px; height: 700px;' src='./movie/movie_image2.jpg' /> ");
		}
		else if(name.equals("미쓰백")) {
			out.println("<img style='width:500px; height: 700px;' src='./movie/movie_image3.jpg' /> ");
		}
		else if(name.equals("베놈")) {
			out.println("<img style='width:500px; height: 700px;' src='./movie/movie_image4.jpg' /> ");
		}
		else if(name.equals("퍼스트맨")) {
			out.println("<img style='width:500px; height: 700px;' src='./movie/movie_image5.jpg' /> ");
		}
		else if(name.equals("스타이즈본")) {
			out.println("<img style='width:500px; height: 700px;' src='./movie/movie_image6.jpg' /> ");
		}
		else if(name.equals("크레이지리치")) {
			out.println("<img style='width:500px; height: 700px;' src='./movie/movie_image7.jpg' /> ");
		}
		
		
		out.println("</body>");
		out.println("</html>");
	}
}
