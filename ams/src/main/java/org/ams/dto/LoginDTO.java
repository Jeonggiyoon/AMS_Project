package org.ams.dto;

public class LoginDTO {


	private String snum;
	private String pw;
	private boolean useCookie;


	public String getSnum() {
		return snum;
	}



	public void setSnum(String snum) {
		this.snum = snum;
	}



	public String getPw() {
		return pw;
	}



	public void setPw(String pw) {
		this.pw = pw;
	}



	public boolean isUseCookie() {
		return useCookie;
	}



	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	
	@Override
	public String toString() {
		return "LoginDTO [snum=" + snum + ", pw=" + pw + ", useCookie=" + useCookie + "]";
	}

	
/*	@Override
	public String toString() {
		return "LoginDTO [snum=" + snum + ", pw=" + pw + ", useCookie="
				+ useCookie + "]";
	}*/
	

}
