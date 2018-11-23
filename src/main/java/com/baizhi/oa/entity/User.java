package com.baizhi.oa.entity;
import java.io.Serializable;
@SuppressWarnings("serial")
public class User implements Serializable{
	private int id;
	private String name;
	private String password;
	private String identity;
	private String phone;
	private String address;
	private String postNumber;
	private int admin;
	private String question;
	private String answer;
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public User(String name, String password, String identity, String phone,
			String address, String postNumber, int admin, String question,
			String answer) {
		super();
		this.name = name;
		this.password = password;
		this.identity = identity;
		this.phone = phone;
		this.address = address;
		this.postNumber = postNumber;
		this.admin = admin;
		this.question = question;
		this.answer = answer;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password
				+ ", identity=" + identity + ", phone=" + phone + ", address="
				+ address + ", postNumber=" + postNumber + ", admin=" + admin
				+ ", question=" + question + ", answer=" + answer + "]";
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostNumber() {
		return postNumber;
	}

	public void setPostNumber(String postNumber) {
		this.postNumber = postNumber;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public String getQuestion() {
		return question;
	}

	public void setQuestion(String question) {
		this.question = question;
	}

	public String getAnswer() {
		return answer;
	}

	public void setAnswer(String answer) {
		this.answer = answer;
	}
}
