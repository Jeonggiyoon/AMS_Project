package org.ams.domain;

import java.util.Date;


public class BoardVO {


	private Integer bno;
	private String lot;
	private int cin;      // carry in
	private int cout;     // carrying out
	private int total;   
	private String writer;
	private Date regdate;
	private int viewcnt;
	
/*	static int result ;*/

	public Integer getBno() {
		return bno;
	}

	public void setBno(Integer bno) {
		this.bno = bno;
	}

	public String getLot() {
		return lot;
	}

	public void setLot(String lot) {
		this.lot = lot;
	}

	public int getCin() {
		return cin;
	}

	public void setCin(int cin) {
		this.cin = cin;
	}

	public int getCout() {
		return cout;
	}

	public void setCout(int cout) {
		this.cout = cout;
	}
	
	public int getTotal() {
		/*		int temp =0;
		
		result = temp + cin;
		result -= cout;
		total = result;*/
		
		return total;
	}

	public void setTotal(int total) {
/*		int temp =0;
		
		result = temp + cin;
		result -= cout;
		total = result;
		*/
		this.total = total;
	}


	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", lot=" + lot + ", cin=" + cin + ", cout=" 
				+ cout + ", total=" + total + ", writer=" + writer + ", regdate=" 
				+ regdate + ", viewcnt=" + viewcnt + "]";
	}
	
}
