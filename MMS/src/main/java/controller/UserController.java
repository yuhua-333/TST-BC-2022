package controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.alibaba.fastjson.JSON;

import entity.PageBean;
import entity.Staff;
import entity.User;
import service.StaffService;
import service.UserService;

@SessionAttributes("currentUser")
@Controller
public class UserController {
	@Resource
    private UserService userService;
	@Resource
	private StaffService staffService;
	@Resource
	private UserService userService2;
	
	@RequestMapping(value="/insertUser",method=RequestMethod.POST)
    public String insertUser(HttpServletRequest req,User user,String key) {
        String key2="2360";
		System.out.println("key="+key);
        if(key.equals(key2)) {
        	user.setUsername(user.getUsername());
        	user.setPassword(user.getPassword());
        	String insertUser=userService2.insertUser(user);
        	System.out.println(user.toString());
        	req.setAttribute("insertUser", insertUser);
        	return "success";
        }
        if(key.equals(key2)!=true){
        	System.out.println("邀请码错误！");
        	return "re_error";
        }
        return "login";
    }
	//登录
    @RequestMapping("/login")
    public String login(@RequestParam("userName")String userName,
        @RequestParam("password")String password,@RequestParam("yzm")String yzm,Model model,HttpSession session) throws Exception{
    	 String yzm2="YUHUA3";
    	 System.out.println("输入的验证码是"+yzm);
        User user = new User();
        user.setUsername(userName);
        user.setPassword(password);
        User userresult = userService.loginByUserNameAndPassword(user);
        if(userresult!=null&&yzm.equals(yzm2)){
            //登录成功
        	System.out.printf("登录成功");
            List<Staff> lists = staffService.selectStaffList();
            model.addAttribute("staffLists", lists);//显示员工信息
        	session.setAttribute("USER_SESSION", user);
            model.addAttribute("currentUser", userresult.getUsername());    
            return "redirect:main";
        }
        return "error";
    }
    @RequestMapping("/main")
	public String main(@RequestParam(value="currentPage", defaultValue="1", required=false)int currentPage,Model model){

		PageBean<Staff> pagemsg = staffService.findByPage(currentPage);
		model.addAttribute("pagemsg", pagemsg);

		List<Staff> lists = staffService.selectStaffList();
		model.addAttribute("staffLists", lists);

		return "main";
	}
   //插入员工
    @RequestMapping("/insert")
    public String insert(HttpServletRequest req,Staff staff) {
    	staff.setStaff_id(staff.getStaff_id());
    	staff.setName(staff.getName());
    	staff.setPart(staff.getPart());
    	staff.setRoleName(staff.getRoleName());
    	staff.setSalary(staff.getSalary());
 	    String insert=staffService.insertById(staff);
 	    System.out.println(staff.toString());
 	    req.setAttribute("insert", insert);
    	return "redirect:main";
    }
    //更新员工
    @RequestMapping("/update")
    public String update(HttpServletRequest req,Staff staff) {
		staff.setStaff_id(staff.getStaff_id());
    	staff.setName(staff.getName());
    	staff.setPart(staff.getPart());
    	staff.setRoleName(staff.getRoleName());
    	staff.setSalary(staff.getSalary());
    	staffService.updateByPrimaryKey(staff);
    	 return "redirect:main";
    }
    //删除员工
    @RequestMapping("/delete")
    public String delete(@RequestParam("staff_id") int staff_id){
        staffService.deleteByPrimaryKey(staff_id);
        return "redirect:main";
    }
    
    @RequestMapping("/testAjax")
    public String testAjax(){
        return "TestAjax";
    }
    @RequestMapping("/getStaff")
    @ResponseBody
    public String getStaff(int staff_id)throws InterruptedException{
    	Staff staff = staffService.selectByPrimaryKey(staff_id);
    	Staff staffl = new Staff();
    	String s= JSON.toJSONString(staffl);
    	if(staff!=null) {
    		s=JSON.toJSONString(staff);
    	}
    	return s;
    }

    
    //退出
    @RequestMapping(value = "/logout")
 	public String logout(HttpSession session) {
 		// 清除Session
 		session.invalidate();
 		// 重定向到登录页面的跳转方法
 		return "login";
 	}
}
