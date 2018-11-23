package com.baizhi.oa.entity;

import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
@SuppressWarnings("serial")
public class Product implements Serializable{
	private int id;
	private String name;
	private Double startPrice;
	private Double upset;
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	@JSONField(format = "yyyy-MM-dd hh:mm:ss")
	private Date startTime;
	@DateTimeFormat(pattern = "yyyy-MM-dd hh:mm:ss")
	@JSONField(format = "yyyy-MM-dd hh:mm:ss")
	private Date endTime;
	private String picture;
	private String desc;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String name, Double startPrice, Double upset,
			Date startTime, Date endTime, String picture, String desc) {
		super();
		this.name = name;
		this.startPrice = startPrice;
		this.upset = upset;
		this.startTime = startTime;
		this.endTime = endTime;
		this.picture = picture;
		this.desc = desc;
	}
	public Product(int id, String name, Double startPrice, Double upset,
			Date startTime, Date endTime, String picture, String desc) {
		super();
		this.id = id;
		this.name = name;
		this.startPrice = startPrice;
		this.upset = upset;
		this.startTime = startTime;
		this.endTime = endTime;
		this.picture = picture;
		this.desc = desc;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Double getStartPrice() {
		return startPrice;
	}
	public void setStartPrice(Double startPrice) {
		this.startPrice = startPrice;
	}
	public Double getUpset() {
		return upset;
	}
	public void setUpset(Double upset) {
		this.upset = upset;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", startPrice="
				+ startPrice + ", upset=" + upset + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", picture=" + picture + ", desc="
				+ desc + "]";
	}
}
