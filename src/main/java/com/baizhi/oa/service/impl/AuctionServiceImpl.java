package com.baizhi.oa.service.impl;
import com.baizhi.oa.dao.ProductDao;
import com.baizhi.oa.entity.Product;
import com.baizhi.oa.service.AuctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
@Transactional
public class AuctionServiceImpl implements AuctionService {
	@Autowired
	private ProductDao productDao;

	@Override
	public void addProduct(Product product) {
		productDao.addProduct(product);
	}

	@Override
	public void update(Product product) {
		productDao.update(product);
	}

	@Override
	public Product selectOne(int id) {
		return productDao.selectOne(id);
	}

	@Override
	public List<Product> selectAll(Product product) {
		return productDao.selectAll(product);
	}

	@Override
	public void delete(int id) {
		productDao.delete(id);
	}
}
