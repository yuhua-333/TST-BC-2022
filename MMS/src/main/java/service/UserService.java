package service;

import entity.User;

public interface UserService {
	User loginByUserNameAndPassword(User record);
	String insertUser(User record);
}
