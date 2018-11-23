package com.baizhi.oa.controller;
import com.baizhi.oa.entity.Product;
import com.baizhi.oa.entity.Record;
import com.baizhi.oa.service.AuctionService;
import com.baizhi.oa.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;
import java.util.Map;
@Controller
public class RecordController {
	@Autowired
	private RecordService recordService;
	@Autowired
	private AuctionService auctionService;
	// ���������Ϣ
	@RequestMapping("/addRecord")
	public String addRecord(int id,Record record){
		Date d = new Date();
		record.setTime(d);
		recordService.addRecord(record);
		return "redirect:/getAll.do?id="+id;
	}
	// ��ѯ������Ϣ
	@RequestMapping("/getAll")
	public String getAll(int id,Map<String, Object> map){
		// ����Ʒ��Ϣ
		Product product = auctionService.selectOne(id);
		// ���ļ�¼��
		List<Record> list = recordService.getAll(id);
		map.put("product", product);
		map.put("recordList", list);
		return "auction";
	}
}
