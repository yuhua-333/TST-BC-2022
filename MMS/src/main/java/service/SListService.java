package service;

import java.util.List;

import entity.PageBean;
import entity.SList;

public interface SListService {
	List<SList> selectList();//查询部门发放的工资单
	int selectCount();//查总条数
	PageBean<SList> findByPage(int currentPage);//调用分页方法
	String insertById(SList slist);

}
