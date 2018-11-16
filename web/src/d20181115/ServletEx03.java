package d20181115;

import java.io.IOException;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

//GenericServlet
//1. GenericServlet 상속
//2. service(req,resp) override
//3. @WebServlet() annotation


@WebServlet("/w20181115/service.do")
public class ServletEx03 extends GenericServlet{
	
	//GenericServlet : HTTP 이외의 다른 프로토콜(FTP,SMTP) 기반으로 수행되는 Servlet을 작성하고자 할 때 많이 사용됨
	
	@Override
	public void init() throws ServletException {
		//init() : 서블릿이 로딩 시 단 한번  호출
		// 		 : 필요한 자원을 할당 - 서블릿을 초기화
		System.out.println("서블릿이 초기화 될 때 호출");
	}
	
	@Override
	public void destroy() {
		//객체 해제 : 서블릿 객체가 더이상 필요하지 않게 되면 메모리에서 제거 (자원 반납)
		System.out.println("서블릿에 메모리에서 제거될 때 호출");
	}
	
	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
		// 서블릿이 초기화 된 후 클라이언트로부터 온 요청에 대한 서비스를 수행
		System.out.println("서비스 실행 중...");
	}
}
