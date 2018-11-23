package com.baizhi.oa.controller;
import com.google.code.kaptcha.Producer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.IOException;
@Controller
public class KaptchaController {
	@Autowired
	private Producer producer;
	@RequestMapping("/getKaptcha")
	public void getKaptcha(HttpSession session, HttpServletResponse response){
		// 生成验证码
		String text = producer.createText();
		// 将生成的验证码放入session作用域
		session.setAttribute("kaptcha", text);
		// 使用生成的文本内容生成图片
		BufferedImage image = producer.createImage(text);
		try {
			// 通过输出流把生成的图片以jpg的格式输出出去
			ImageIO.write(image, "jpg", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
