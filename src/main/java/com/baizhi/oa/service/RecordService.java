package com.baizhi.oa.service;
import java.util.List;
import com.baizhi.oa.entity.Record;
public interface RecordService {
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
