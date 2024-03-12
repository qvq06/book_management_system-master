package com.rain.bean;

public class BookBean {
	/**
	 * 图书的数据表的bean
	 */
	private int bid;
	private String cn;//id
	private String bname;//图书名称
	private int year;
	private int volume;
	private int issue;
	private String library;
	private int bstatus;
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
	public String getLibrary() {
		return library;
	}
	public void setLibrary(String library) {
		this.library=library;
	}
	public int getBstatus() {
		return bstatus;
	}
	public void setBstatus(int bstatus) {
		this.bstatus = bstatus;
	}
}
