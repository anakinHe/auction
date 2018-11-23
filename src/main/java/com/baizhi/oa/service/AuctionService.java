package com.baizhi.oa.service;
import java.util.List;
import com.baizhi.oa.entity.Product;
public interface AuctionService {
	/**
	 *  ���product
	 * @param product
	 */
	void addProduct(Product product);
	/**
	 *  ɾ����Ϣ
	 * @param id
	 */
	void delete(int id);
	/**
	 *  �޸���Ϣ
	 * @param id
	 */
	void update(Product product);
	/**
	 *  ��ѯ����product
	 * @param id
	 * @return
	 */
	Product selectOne(int id);
	/**
	 *  ��ѯ����
	 * @return
	 */
	List<Product>selectAll(Product product);
}
