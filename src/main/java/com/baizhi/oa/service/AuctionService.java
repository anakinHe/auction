package com.baizhi.oa.service;
import java.util.List;
import com.baizhi.oa.entity.Product;
public interface AuctionService {
	/**
	 *  添加product
	 * @param product
	 */
	void addProduct(Product product);
	/**
	 *  删除信息
	 * @param id
	 */
	void delete(int id);
	/**
	 *  修改信息
	 * @param id
	 */
	void update(Product product);
	/**
	 *  查询单个product
	 * @param id
	 * @return
	 */
	Product selectOne(int id);
	/**
	 *  查询所有
	 * @return
	 */
	List<Product>selectAll(Product product);
}
