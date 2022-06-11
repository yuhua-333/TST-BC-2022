package dao;

import entity.User;

public interface UserDao {
	User loginByUserNameAndPassword(User record);
	int insertUser(User user);
}
