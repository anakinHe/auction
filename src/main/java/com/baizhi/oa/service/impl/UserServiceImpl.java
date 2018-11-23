package com.baizhi.oa.service.impl;

import com.baizhi.oa.dao.UserDao;
import com.baizhi.oa.entity.User;
import com.baizhi.oa.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDao;
	// ��¼
	@Override
	public User login(User user) {
		return userDao.login(user);
	}
	@Override
	public boolean register(User user) {
		User us = userDao.login(user);
		if(us == null){
			userDao.register(user);
			return true;
		}
		return false;
	}
}
