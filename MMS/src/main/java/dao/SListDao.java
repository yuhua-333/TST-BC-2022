package dao;

import java.util.HashMap;
import java.util.List;

import entity.SList;

public interface SListDao {
	List<SList> selectList();
	//查总条数
	int selectCount();
	//调用分页方法
	List<SList> findByPage(HashMap<String,Object> map);

}
