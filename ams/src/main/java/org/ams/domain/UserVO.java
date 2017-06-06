package org.ams.domain;

public class UserVO {

private String snum;
  private String pw;
  private String type;
  private String name;
  private String position;
  private String addr;
  private String num;
  private int upoint;

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



	public String getType() {
		return type;
	}



	public void setType(String type) {
		this.type = type;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getPosition() {
		return position;
	}



	public void setPosition(String position) {
		this.position = position;
	}



	public String getAddr() {
		return addr;
	}



	public void setAddr(String addr) {
		this.addr = addr;
	}



	public String getNum() {
		return num;
	}



	public void setNum(String num) {
		this.num = num;
	}



	public int getUpoint() {
		return upoint;
	}



	public void setUpoint(int upoint) {
		this.upoint = upoint;
	}
	
	@Override
	public String toString() {
	return "UserVO [snum=" + snum + ", pw=" + pw + ", type=" + type + ", name=" + name + ", position=" + position
			+ ", addr=" + addr + ", num=" + num + ", upoint=" + upoint + "]";
	}



/*  @Override
  public String toString() {
    return "UserVO [snum=" + snum + ", pw=" + pw + ", type=" + type + ", name=" + name + ", position=" + position + ", addr=" + addr + ", num=" + num + ", upoint=" + upoint + "]";
  }*/
}
