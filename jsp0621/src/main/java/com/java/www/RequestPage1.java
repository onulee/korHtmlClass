package com.java.www;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RequestPage1
 */
@WebServlet("/r1")
public class RequestPage1 extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		
		request.setAttribute("id", "admin");
		request.setAttribute("pw", "1234");
		
		//response.sendRedirect("j0621_01.jsp");
		RequestDispatcher rd = request.getRequestDispatcher("j0621_01.jsp");
		rd.forward(request, response);
		
		
//		response.setContentType("text/html; charset=utf-8");
//		PrintWriter writer = response.getWriter();
//		writer.println("<html><head>");
//		writer.println("</head>");
//		writer.println("<body>");
//		writer.println("<h3></h3>");
//		writer.println("</body>");
//		writer.println("</html>");
		
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		doAction(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		doAction(request,response);
	}

}
