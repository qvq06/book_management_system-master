package com.rain.bean;

public class HistoryBean {
	/**
	 * 历史借阅记录的数据表的bean
	 */
	private int hid;
	private int bid;
	private String cn;//图书号
	private String bname;//图书名称
	private String userid;//读者的账号
	private int year;
	private int volume;
	private int issue;
	private String begintime;//借阅时间
	private String endttime;//要还书的时间
	private int hstatus;//表示借阅状态，1为正在借阅，2是已经还书
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid=hid;
	}
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid=bid;
	}
	public String getCN() {
		return cn;
	}
	public void setCN(String cn) {
		this.cn =cn ;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname=bname;
	}
	public int getYear() {
		return year;
	}
	public void setYear(int year) {
		this.year=year;
	}
	public int getVolume() {
		return volume;
	}
	public void setVolume(int volume) {
		this.volume=volume;
	}
	public int getIssue() {
		return issue;
	}
	public void setIssue(int issue) {
		this.issue=issue;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid =userid ;
	}
	public int getHstatus() {
		return hstatus;
	}
	public void setHstatus(int hstatus) {
		this.hstatus = hstatus;
	}
    public String getBegintime() {
			return begintime;
	}
	public void setBegintime(String begintime) {
			this.begintime=begintime ;	
    }
    public String getEndttime() {
			return endttime;
	}
	public void setEndttime(String endttime) {
			this.endttime=endttime ;	
    }
}
