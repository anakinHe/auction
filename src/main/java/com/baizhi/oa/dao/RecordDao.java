package com.baizhi.oa.dao;
import com.baizhi.oa.entity.Record;

import java.util.List;
public interface RecordDao {
	/**
	 *  添加拍卖信息
	 * @param record
	 */
	void addRecord(Record record);
	/**
	 *  查询拍卖信息
	 * @return
	 */
	List<Record> getAll(int id);
}
