package service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import dao.UserDao;
import entity.User;
import service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource
    private UserDao userDao;
	public User loginByUserNameAndPassword(User record) {

        return userDao.loginByUserNameAndPassword(record);
    }
	public String insertUser(User user) {
		int i=userDao.insertUser(user);
		String message="";
		if(i>0) {
			message="添加成功";
		}else {
			message="添加失败";
		}
		System.out.print(message);
		return message;
	}

}
