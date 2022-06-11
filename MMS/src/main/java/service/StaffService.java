package service;

import java.util.List;
import entity.PageBean;
import entity.Staff;

public interface StaffService {
	//增删改查
	int insertSelective(Staff record);
	int deleteByPrimaryKey(Integer staff_id);
	int updateByPrimaryKey(Staff record);
	Staff selectByPrimaryKey(Integer staff_id);
	
	List<Staff> selectStaffList();//查询全部员工信息
	int selectCount();//查总条数
	PageBean<Staff> findByPage(int currentPage);//调用分页方法
	String insertById(Staff staff);

}
