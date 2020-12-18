package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/test.do")
//    /test.do라는 url이 들어오면 FirstServlet으로 이동시켜달라
//ex) localhost:8888/.../test.do 
public class FirstServlet extends HttpServlet  {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		
		System.out.println("doGet()에 의해서 실행된 코드");
		// test.do?mid=hong&phone=010-1111-1111 : get타입
		System.out.println(request.getParameter("mid"));
		System.out.println(request.getParameter("phone"));
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()에 의해서 실행된 코드");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		
		// <form method = 'POST' /> :post타입
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("address"));
	}

}
