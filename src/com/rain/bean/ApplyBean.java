package com.rain.bean;
 public class ApplyBean
 {
	private int aid;
	private  String cn;
	private   String bname;
	private String userid;
	private int year;
	private int volume;
	private int issue;
	private int astatus;
	private String place;
	private String applytime;
	private String endtime ;
	public int getAid() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid=aid;
	}
	public int getAstatus() {
		return  astatus;
	}
	public void setAstatus(int astatus)
	{
		this.astatus=astatus;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid =userid ;
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
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place =place ;
	}
    public String getApplytime() {
			return applytime;
	}
	public void setApplytime(String applytime) {
			this.applytime=applytime ;	
    }
    public String getEndtime() {
			return endtime;
	}
	public void setEndtime(String endtime) {
			this.endtime=endtime ;	
    }
 }