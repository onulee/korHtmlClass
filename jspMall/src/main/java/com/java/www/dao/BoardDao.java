package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.Board;

public class BoardDao {
	
	private Context context;
	private DataSource dataSource;
	private Connection conn;
	private Board board;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private int bno;
	private String id,btitle,bcontent;
	private Date bdate;
	private int bhit,bgroup,bstep,bindent;
	private String bfile;
	
	private String query;
	private int result;
	
	//게시글 삭제
	public int deleteOne(int bno) {
		try {
			conn = getConnection();
			query="delete board where bno=?";
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bno);
			result = pstmt.executeUpdate();
			
			System.out.println("bno : "+bno);
			System.out.println("result : "+ result);
			
		} catch (Exception e) { e.printStackTrace();		
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}
		return result;
	}//deleteOne
	
	//게시글 수정
	public int updateOne(int ubno, String uid, String ubtitle, String ubcontent, 
			String ubfile) {
		try {
			conn = getConnection();
			query="update board set btitle=?,bcontent=?,bfile=? where bno=?";
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, ubtitle);
			pstmt.setString(2, ubcontent);
			pstmt.setString(3, ubfile);
			pstmt.setInt(4, ubno);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) { e.printStackTrace();		
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}
		return result;
	}//updateOne
	
	//게시글 저장
	public int insertOne(String userId,String userBtitle,
			String userBcontent,String userBfile) {
		try {
			conn = getConnection();
			query="insert into board values ("
					+ "board_seq.nextval,?,?,?,sysdate,"
					+ "0,board_seq.currval,0,0,? )";
			
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, userId);
			pstmt.setString(2, userBtitle);
			pstmt.setString(3, userBcontent);
			pstmt.setString(4, userBfile);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) { e.printStackTrace();		
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}
		return result;
	}//insertOne
	
	
	//조회수 1증가 
	public void updateHit(int ubno) {
		try {
			conn = getConnection();
			query="update board set bhit=bhit+1 where bno=?";
			
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, ubno);
			result = pstmt.executeUpdate();
			
		} catch (Exception e) { e.printStackTrace();		
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}
	}
	
	
	//게시글 1개 가져오기
	public Board selectOne(int userBno) {
		try {
			conn = getConnection();
			query="select * from board where bno=?";
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, userBno);
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
				board = new Board(bno,id,btitle,bcontent,bdate,bhit,bgroup,bstep,bindent,bfile);
			}//while
		} catch (Exception e) { e.printStackTrace();		
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}
		return board;
	}//selectOne
	
	//게시글 전체가져오기
	public ArrayList<Board> selectAll(){
		ArrayList<Board> list = new ArrayList<>();
		try {
			conn = getConnection();
			query="select * from board";
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
		} catch (Exception e) { e.printStackTrace();		
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) { e2.printStackTrace();}
		}
		return list;
	}//selectAll
	
	
	//커넥션 메소드
	public Connection getConnection() {
		Connection connection = null;
		try {
			context = new InitialContext();
	    	dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
	    	connection = dataSource.getConnection();
		}catch(Exception e){e.printStackTrace();}
		return connection;
	}//getConnection


	

}
