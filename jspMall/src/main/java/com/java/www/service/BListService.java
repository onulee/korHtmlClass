package com.java.www.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.java.www.dto.Board;

public class BListService implements BService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// dao -> list
		BoardDao bdao = new BoardDao();
		ArrayList<Board> list = bdao.selectAll();
		
		request.setAttribute("list", list);

	}

}
