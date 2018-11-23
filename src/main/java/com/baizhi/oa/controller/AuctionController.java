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
	//查询一个
	@RequestMapping("/selectOne")
	public String selectOne(int id,Map<String, Product> map){
		Product product = auctionService.selectOne(id);
		map.put("product", product);
		return "update";
	}
	// 添加拍卖品
	@SuppressWarnings("deprecation")
	@RequestMapping("/addProduct")
	public String addProduct(Product product,MultipartFile image,HttpServletRequest request){
		// 获取文件名并组成新的名字
		String fileName = new Date().getTime()+"_"+image.getOriginalFilename();
		product.setPicture(fileName);
		try {
			// 获取文件上传路径
			String realPath = request.getRealPath("/images");
			// 将文件以流的形式上传到服务器
			image.transferTo(new File(realPath+"/"+fileName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		// 上传文件
		auctionService.addProduct(product);
		return "redirect:/selectAll.do";
	}
	// 删除拍卖品
	@RequestMapping("/delete")
	public String delete(int id){
		auctionService.delete(id);
		return "redirect:/selectAll.do";
	}
	// 修改拍卖品
	@RequestMapping("/update")
	public String update(Product product,MultipartFile image,HttpServletRequest request){
		// 获取源文件名
		String fileName = image.getOriginalFilename();
		// 判断源文件名是否为空，不为空则代表新上传了文件
		if(fileName != null){
			// 生成新的文件名，防止文件重名覆盖
			String newFileName = new Date().getTime()+"_"+ fileName;
			product.setPicture(newFileName);
			try {
				// 获取文件上传的路径
				@SuppressWarnings("deprecation")
				String realPath = request.getRealPath("/images");
				// 将文件以流的形式上传到服务器
				image.transferTo(new File(realPath+"/"+newFileName));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}	
		}
		// 修改文件信息
		auctionService.update(product);
		return "redirect:/selectAll.do";
	}
}
