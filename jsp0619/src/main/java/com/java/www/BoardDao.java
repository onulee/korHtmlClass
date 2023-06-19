package com.java.www;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BoardDao {
	
	Context context = null;
    DataSource dataSource = null;
    Connection conn = null;
	PreparedStatement pstmt;
	ResultSet rs;
	//컬럼타입
	
	int bno;
	String id;
	String btitle;
	String bcontent;
	Date bdate;
	int bhit;
	int bgroup;
	int bstep;
	int bindent;
	String bfile;
	
	String query;
	int result;
	
	// 커넥션 연결메소드 - conn
	private Connection getConnection() {
		Connection connection = null;
		try {
			context = new InitialContext();
	    	dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
	    	connection = dataSource.getConnection();
		}catch(Exception e){e.printStackTrace();}
		return connection;
	}//getConnection
	
	
	//게시판리스트 메소드
	public ArrayList<Board> selectBoard() {
		ArrayList<Board> list = new ArrayList<>();
		try{
	    	 conn = getConnection();
	    	 query = "select * from board";
	    	 pstmt = conn.prepareStatement(query);
	    	 rs = pstmt.executeQuery();
	    	 while(rs.next()) {
	    		 
	    		 bno = rs.getInt("bno");
	    		 id = rs.getString("id");
	    		 btitle = rs.getString("btitle");
	    		 bcontent = rs.getString("bcontent");
	    		 bdate = rs.getDate("bdate");
	    		 bhit = rs.getInt("bhit");
	    		 bgroup = rs.getInt("bgroup");
	    		 bstep = rs.getInt("bstep");
	    		 bindent = rs.getInt("bindent");
	    		 bfile = rs.getString("bfile");
	    		 list.add(new Board(bno,id,btitle,bcontent,bdate,bhit,bgroup,bstep,bindent,bfile));
	    	 }
	    }catch(Exception e){
	    	e.printStackTrace();
	    }finally{
	    	try{
	    		if(rs!=null) rs.close();
	    		if(pstmt!=null) pstmt.close();
	    		if(conn!=null) conn.close();
	    	}catch(Exception e2){e2.printStackTrace();}
	    }
		return list;
	}//selectMember
	
	

}//class
