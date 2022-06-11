package interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import entity.User;

public class LoginInterceptor implements HandlerInterceptor{
	
     public void postHandle(HttpServletRequest request,
    		 HttpServletResponse response,Object handler,
    		 ModelAndView modelAndView)throws Exception{
    	 
     }
     public void afterCompletion(HttpServletRequest request,
    		 HttpServletResponse response,Object handler,Exception ex)throws Exception{
    	 
     }
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		 String url=request.getRequestURI();
    	 if(url.indexOf("login")>=0) {
    		 return true;
    	 }
    	 HttpSession session=request.getSession();
    	 User user=(User) session.getAttribute("USER_SESSION");
    	 if(user!=null) {
    		 return true;
    	 }
    	 request.setAttribute("msg", "未登录！请先登录才可查看！");
    	 request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		return false;
	}

}
