package com.baizhi.oa.service;
import java.util.List;
import com.baizhi.oa.entity.Record;
public interface RecordService {
	/**
	 *  ���������Ϣ
	 * @param record
	 */
	void addRecord(Record record);
	/**
	 *  ��ѯ������Ϣ
	 * @return
	 */
	List<Record> getAll(int id);
}
