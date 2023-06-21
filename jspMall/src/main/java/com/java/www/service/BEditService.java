package com.java.www.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.www.dao.BoardDao;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BEditService implements BService {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		String uploadPath = "c:/upload";
		int size = 10*1024*1024;
		try {
			MultipartRequest multi = 
					new MultipartRequest(request, uploadPath,size,"utf-8",new DefaultFileRenamePolicy());
		
			int bno = Integer.parseInt(multi.getParameter("bno"));
			String id = multi.getParameter("id");
			String btitle = multi.getParameter("btitle");
			String bcontent = multi.getParameter("bcontent");
			String oldfile = multi.getParameter("oldfile");
			String bfile = multi.getFilesystemName("bfile");
			
			if(bfile==null) { bfile = oldfile;	}
			
			System.out.println("oldfile : "+ oldfile);
			System.out.println("bfile : "+ bfile);
			
			BoardDao bdao = new BoardDao();
			int result = bdao.updateOne(bno, id, btitle, bcontent, bfile);
			
			request.setAttribute("result", result);
		
		} catch (Exception e) {e.printStackTrace();}

	}

}
