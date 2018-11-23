package com.baizhi.oa.service;

import com.baizhi.oa.entity.User;

public interface UserService {
	/**
	 *  ��¼
	 * @param user
	 * @return
	 */
	User login(User user);
	/**
	 *  ע��
	 * @param user
	 * @return
	 */
	boolean register(User user);
}
