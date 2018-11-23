package com.baizhi.oa.controller;

import com.baizhi.oa.entity.Product;
import com.baizhi.oa.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Controller
public class AuctionController {
	@Autowired
	private AuctionService auctionService;
	@RequestMapping("/selectAll")
	public String selectAll(Map<String, List<Product>> map, Product product){
		List<Product> list = auctionService.selectAll(product);
		map.put("productList", list);
		return "show";
	}
	//��ѯһ��
	@RequestMapping("/selectOne")
	public String selectOne(int id,Map<String, Product> map){
		Product product = auctionService.selectOne(id);
		map.put("product", product);
		return "update";
	}
	// �������Ʒ
	@SuppressWarnings("deprecation")
	@RequestMapping("/addProduct")
	public String addProduct(Product product,MultipartFile image,HttpServletRequest request){
		// ��ȡ�ļ���������µ�����
		String fileName = new Date().getTime()+"_"+image.getOriginalFilename();
		product.setPicture(fileName);
		try {
			// ��ȡ�ļ��ϴ�·��
			String realPath = request.getRealPath("/images");
			// ���ļ���������ʽ�ϴ���������
			image.transferTo(new File(realPath+"/"+fileName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		// �ϴ��ļ�
		auctionService.addProduct(product);
		return "redirect:/selectAll.do";
	}
	// ɾ������Ʒ
	@RequestMapping("/delete")
	public String delete(int id){
		auctionService.delete(id);
		return "redirect:/selectAll.do";
	}
	// �޸�����Ʒ
	@RequestMapping("/update")
	public String update(Product product,MultipartFile image,HttpServletRequest request){
		// ��ȡԴ�ļ���
		String fileName = image.getOriginalFilename();
		// �ж�Դ�ļ����Ƿ�Ϊ�գ���Ϊ����������ϴ����ļ�
		if(fileName != null){
			// �����µ��ļ�������ֹ�ļ���������
			String newFileName = new Date().getTime()+"_"+ fileName;
			product.setPicture(newFileName);
			try {
				// ��ȡ�ļ��ϴ���·��
				@SuppressWarnings("deprecation")
				String realPath = request.getRealPath("/images");
				// ���ļ���������ʽ�ϴ���������
				image.transferTo(new File(realPath+"/"+newFileName));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}	
		}
		// �޸��ļ���Ϣ
		auctionService.update(product);
		return "redirect:/selectAll.do";
	}
}
