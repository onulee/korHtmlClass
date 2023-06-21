package com.java.www;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/r2")
public class RequestPage2 extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction");
		request.setCharacterEncoding("utf-8");
		
		// dao연결
		BoardDao bdao = new BoardDao();
		Board board = bdao.selectOne(3);
		ArrayList<Board> list = bdao.selectAll();
		
		//request추가
		request.setAttribute("board", board);
		request.setAttribute("list", list);
		
		//request전송
		RequestDispatcher rd = request.getRequestDispatcher("j0621_02.jsp");
		rd.forward(request, response);
		
		
	
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
