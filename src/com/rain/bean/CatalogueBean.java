package com.rain.bean;

public class CatalogueBean 
{
	private int cid;
	private String cn;
	private String 	issn;
	private String bname;
	private String pcode;
	private String publish;
	private String place;
	private String press;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid=cid;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place =place ;
	}
	public String getPress() {
		return press;
	}
	public void setPress(String press) {
		this.press =press ;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish =publish ;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode =pcode ;
	}
	public String getCN() {
		return cn;
	}
	public void setCN(String cn) {
		this.cn =cn ;
	}
	public String getISSN() {
		return issn;
	}
	public void setISSN(String issn) {
		this.issn =issn ;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname=bname;
	}
	
}
