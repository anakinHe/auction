package com.baizhi.oa.dao;

import com.baizhi.oa.entity.User;

public interface UserDao {
	/**
	 *  ��¼
	 * @param user
	 * @return
	 */
	User login(User user);
	/**
	 *  ע��
	 * @param user
	 */
	void register(User user);

}
