package com.baizhi.oa.dao;
import com.baizhi.oa.entity.Record;

import java.util.List;
public interface RecordDao {
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
