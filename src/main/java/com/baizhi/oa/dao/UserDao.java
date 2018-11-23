package com.baizhi.oa.dao;

import com.baizhi.oa.entity.User;

public interface UserDao {
	/**
	 *  µÇÂ¼
	 * @param user
	 * @return
	 */
	User login(User user);
	/**
	 *  ×¢²á
	 * @param user
	 */
	void register(User user);

}
