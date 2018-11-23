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
		// ������֤��
		String text = producer.createText();
		// �����ɵ���֤�����session������
		session.setAttribute("kaptcha", text);
		// ʹ�����ɵ��ı���������ͼƬ
		BufferedImage image = producer.createImage(text);
		try {
			// ͨ������������ɵ�ͼƬ��jpg�ĸ�ʽ�����ȥ
			ImageIO.write(image, "jpg", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}