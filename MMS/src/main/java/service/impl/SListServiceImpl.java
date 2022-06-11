package service.impl;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import dao.SListDao;
import entity.PageBean;
import entity.SList;
import service.SListService;

@Service("slistService")
@Transactional
public class SListServiceImpl implements SListService{
	@Resource
	private SListDao slistDao;

	public List<SList> selectList() {
		// TODO Auto-generated method stub
		return slistDao.selectList();
	}

	public int selectCount() {
		// TODO Auto-generated method stub
		return slistDao.selectCount();
	}

	public PageBean<SList> findByPage(int currentPage) {
		 HashMap<String,Object> map = new HashMap<String,Object>();
	        PageBean<SList> pageBean = new PageBean<SList>();

	        //封装当前页数
	        pageBean.setCurrPage(currentPage);

	        //每页显示的数据
	        int pageSize=5;
	        pageBean.setPageSize(pageSize);

	        //封装总记录数
	        int totalCount = slistDao.selectCount();
	        pageBean.setTotalCount(totalCount);

	        //封装总页数
	        double tc = totalCount;
	        Double num =Math.ceil(tc/pageSize);//向上取整
	        pageBean.setTotalPage(num.intValue());

	        map.put("start",(currentPage-1)*pageSize);
	        map.put("size", pageBean.getPageSize());
	        //封装每页显示的数据
	        List<SList> slists = slistDao.findByPage(map);
	        pageBean.setLists(slists);

	        return pageBean;
	}

	public String insertById(SList slist) {
		// TODO Auto-generated method stub
		return null;
	}

}
