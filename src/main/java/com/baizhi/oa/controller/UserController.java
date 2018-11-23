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
	//登录
	@RequestMapping("/login")
	public String login(User user,String kaptcha, HttpSession session,Map<String, String> map){
	String  strKaptcha = (String) session.getAttribute("kaptcha");
	if(kaptcha.equalsIgnoreCase(strKaptcha)){
		user = userService.login(user);
		if(user != null){
			// 将登录标记放入作用域 
			session.setAttribute("user", user);
			return "redirect:/selectAll.do";
		}else{	
			map.put("errorMessage", "账号或密码输入有误，请重新输入");
		 return "forward:/login.jsp";
		 }
	}else{
		map.put("errorMessage", "验证码输入有误，请重新输入");
		return "forward:/login.jsp";
	}
	}
	// 注册
	@RequestMapping("/register")
	public String register(User user){
		user.setAdmin(0);
		user.setAnswer("过客");
		user.setQuestion("你最喜欢的歌");
		boolean flag = userService.register(user);
		if(flag){
			return "login";
		}
		return "register";
	}
	// 注销登录
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "login";
	}
}
