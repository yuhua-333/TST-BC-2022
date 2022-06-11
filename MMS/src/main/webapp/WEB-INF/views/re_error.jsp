<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>登录</title>
<style> 
body{ text-align:center } 
.div{ margin:0 auto; width:500px; height:300px; border:3px solid black} 
</style> 
<body>
<div class="div"> 
<h2>邀请码错误！！请返回重新注册</h2>
<hr>
<br>
     <form action="${pageContext.request.contextPath}/register.jsp" method="post">	
	      <input type="submit" value="注册"/>	
	 </form>
    
</div>
</body>
</html>
