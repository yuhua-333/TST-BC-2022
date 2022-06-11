package dao;

import java.util.HashMap;
import java.util.List;

import entity.Staff;

public interface StaffDao {
	//增删改查
	int insertById(Staff staff);
	int deleteByPrimaryKey(Integer staff_id);
	int updateByPrimaryKey(Staff record);
	Staff selectByPrimaryKey(Integer staff_id);
	//查询全部
	List<Staff> selectStaffList();
	//查总条数
	int selectCount();
	//调用分页方法
	List<Staff> findByPage(HashMap<String,Object> map);
	

}
