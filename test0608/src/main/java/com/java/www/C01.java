package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/C01")
public class C01 extends HttpServlet {
    
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction으로 접근했습니다.");
		request.setCharacterEncoding("utf-8"); //데이터 전달받을 시 한글처리
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head><title>jsp페이지</title></head>");
		writer.println("<style>h2{font-size:30px; }</style>");
		writer.println("<body>");
		writer.println("<h2>서블릿에서 페이지를 생성하고 있습니다.</h2>");
		writer.println("<a href='index.jsp'>index페이지 이동</a>");
		writer.println("</body>");
		writer.println("</html>");
		writer.close();
	}
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet으로 접근했습니다.");
		doAction(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost으로 접근했습니다.");
		doAction(request,response);
		
	}

}
