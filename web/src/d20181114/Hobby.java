package d20181114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/w20181114/printHobby.do")//주소가 감춰진다. 웹 바로 아래만 찾기 때문에 폴더를 지정해줘야한다.
///w20181114/printHobby.html도 가능 hobby쪽도 바꿔주면..
public class Hobby extends HttpServlet{

	//1. 주소 printHobby.do
	//2. 방식 get (post면 doPost로..)
	
	//데이터의 흐름 조종...(post면 dopost 로 get이면 doget 의 함수가 쓰인다..)
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//한글 처리(깨짐 방지)
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=UTF-8");
		
		String ho = req.getParameter("hobby");//checkbox에 대한 값 받기
		
		//출력 객체 생성
		PrintWriter out = resp.getWriter();//당장은 출력 하지만 후엔 다른 페이지로 전달도 가능
		
		//html로 출력
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hobby Check</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>당신의 취미는 "+ho+" 입니다.</h2>");
		out.println("</body>");
		out.println("</html>");
	}
	
	
	
}
