package com.rain.bean;

public class AdminBean {
	/**
	 * 用户的数据表的bean 
	 */
	private String userid;//id
	private int status;//用来判断是管理员还是读者，读者的值为1，管理员为2
	private String uname;//用户姓名
	private String password;//密码
	private String email;//邮箱
	private String phone;//手机号
	private int lend;//可借阅天数
	private int max;//最大可借数
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid =userid ;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getLend() {
		return lend;
	}
	public void setLend(int lend) {
		this.lend = lend;
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	
}
