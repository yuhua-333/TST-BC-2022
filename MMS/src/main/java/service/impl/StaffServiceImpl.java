package service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.StaffDao;
import entity.PageBean;
import entity.Staff;
import service.StaffService;

@Service("staffService")
@Transactional
public class StaffServiceImpl implements StaffService{
	@Resource
	private StaffDao staffDao;
	public int deleteByPrimaryKey(Integer staff_id) {
		return staffDao.deleteByPrimaryKey(staff_id);
	}
	public String insertById(Staff staff) {
		int i = staffDao.insertById(staff);
		String message="";
		if(i>0) {
			message="添加成功";
		}else {
			message="添加失败";
		}
		System.out.print(message);
		return message;
    }
	public int updateByPrimaryKey(Staff record) {
		return staffDao.updateByPrimaryKey(record);
	}
	public Staff selectByPrimaryKey(Integer staff_id) {
		return staffDao.selectByPrimaryKey(staff_id);
	}
	public List<Staff> selectStaffList() {
		return staffDao.selectStaffList();
	}
	public int selectCount() {
		return staffDao.selectCount();
	}
	public PageBean<Staff> findByPage(int currentPage) {
		 HashMap<String,Object> map = new HashMap<String,Object>();
	        PageBean<Staff> pageBean = new PageBean<Staff>();

	        //封装当前页数
	        pageBean.setCurrPage(currentPage);

	        //每页显示的数据
	        int pageSize=5;
	        pageBean.setPageSize(pageSize);

	        //封装总记录数
	        int totalCount = staffDao.selectCount();
	        pageBean.setTotalCount(totalCount);

	        //封装总页数
	        double tc = totalCount;
	        Double num =Math.ceil(tc/pageSize);//向上取整
	        pageBean.setTotalPage(num.intValue());

	        map.put("start",(currentPage-1)*pageSize);
	        map.put("size", pageBean.getPageSize());
	        //封装每页显示的数据
	        List<Staff> lists = staffDao.findByPage(map);
	        pageBean.setLists(lists);

	        return pageBean;
	}
	public int insertSelective(Staff record) {
		// TODO Auto-generated method stub
		return 0;
	}
	public String insertByid(Staff staff) {
		// TODO Auto-generated method stub
		return null;
	}
	

}
