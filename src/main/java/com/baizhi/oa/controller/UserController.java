package com.baizhi.oa.controller;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.baizhi.oa.entity.User;
import com.baizhi.oa.service.UserService;
@Controller
public class UserController {
	@Autowired
	private UserService userService;
	//��¼
	@RequestMapping("/login")
	public String login(User user,String kaptcha, HttpSession session,Map<String, String> map){
	String  strKaptcha = (String) session.getAttribute("kaptcha");
	if(kaptcha.equalsIgnoreCase(strKaptcha)){
		user = userService.login(user);
		if(user != null){
			// ����¼��Ƿ��������� 
			session.setAttribute("user", user);
			return "redirect:/selectAll.do";
		}else{	
			map.put("errorMessage", "�˺Ż�����������������������");
		 return "forward:/login.jsp";
		 }
	}else{
		map.put("errorMessage", "��֤��������������������");
		return "forward:/login.jsp";
	}
	}
	// ע��
	@RequestMapping("/register")
	public String register(User user){
		user.setAdmin(0);
		user.setAnswer("����");
		user.setQuestion("����ϲ���ĸ�");
		boolean flag = userService.register(user);
		if(flag){
			return "login";
		}
		return "register";
	}
	// ע����¼
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "login";
	}
}
