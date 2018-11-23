package com.baizhi.oa.entity;

import java.io.Serializable;
import java.util.Date;

@SuppressWarnings("serial")
public class Record implements Serializable{
	private int id;
	private int userid;
	private int productid;
	private Date time;
	private double price;
	private User user;
	public Record() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Record(int userid, int productid, Date time, double price) {
		super();
		this.userid = userid;
		this.productid = productid;
		this.time = time;
		this.price = price;
	}
	public Record(int id, int userid, int productid, Date time, double price) {
		super();
		this.id = id;
		this.userid = userid;
		this.productid = productid;
		this.time = time;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Record [id=" + id + ", userid=" + userid + ", productid="
				+ productid + ", time=" + time + ", price=" + price + ", user="
				+ user + "]";
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
}
