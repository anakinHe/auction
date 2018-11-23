package com.baizhi.oa.service.impl;

import com.baizhi.oa.dao.RecordDao;
import com.baizhi.oa.entity.Record;
import com.baizhi.oa.service.RecordService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class RecordServiceImpl implements RecordService {
	@Autowired
	private RecordDao recordDao;
	//���������¼
	@Override
	public void addRecord(Record record) {
		 recordDao.addRecord(record);
	}
	// ��ѯ������¼
	@Override
	public List<Record> getAll(int id) {
		return recordDao.getAll(id);
	}
}
