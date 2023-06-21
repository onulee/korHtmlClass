package com.java.www.dto;

import java.util.Date;

public class Board {
	public Board() {}
	public Board(int bno, String id, String btitle, String bcontent, Date bdate, int bhit, int bgroup, int bstep,
			int bindent, String bfile) {
		this.bno = bno;
		this.id = id;
		this.btitle = btitle;
		this.bcontent = bcontent;
		this.bdate = bdate;
		this.bhit = bhit;
		this.bgroup = bgroup;
		this.bstep = bstep;
		this.bindent = bindent;
		this.bfile = bfile;
	}

	private int bno;
	private String id;
	private String btitle;
	private String bcontent;
	private Date bdate;
	private int bhit;
	private int bgroup;
	private int bstep;
	private int bindent;
	private String bfile;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public Date getBdate() {
		return bdate;
	}
	public void setBdate(Date bdate) {
		this.bdate = bdate;
	}
	public int getBhit() {
		return bhit;
	}
	public void setBhit(int bhit) {
		this.bhit = bhit;
	}
	public int getBgroup() {
		return bgroup;
	}
	public void setBgroup(int bgroup) {
		this.bgroup = bgroup;
	}
	public int getBstep() {
		return bstep;
	}
	public void setBstep(int bstep) {
		this.bstep = bstep;
	}
	public int getBindent() {
		return bindent;
	}
	public void setBindent(int bindent) {
		this.bindent = bindent;
	}
	public String getBfile() {
		return bfile;
	}
	public void setBfile(String bfile) {
		this.bfile = bfile;
	}
	
	
	
	
}
