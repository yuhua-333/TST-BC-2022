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
.div{ margin:0 auto; width:500px; height:400px; border:3px solid black} 
</style> 
<body>
<br>
<br>
<div class="div"> 
<h2>欢迎登录</h2>

    <form action="${pageContext.request.contextPath }/login" method="post">
       姓&nbsp;名:<input id="userName" type="text" name="userName"/>
          <br/><br/>
                          密&nbsp;码:<input id="password" type="text" name="password"/><br><br>
           请输入下方验证码:<input id="yzm" type="text" name="yzm" ><br>
          <img src="${pageContext.request.contextPath}/picture/yzm.png" style="width:100px;height:90px;">
          <br>
        <input type="submit" value="登录"/>
    </form>
    <br>
     <form action="${pageContext.request.contextPath}/register.jsp" method="post">	
	      <input type="submit" value="注册"/>	
	 </form>
    
</div>
</body>
</html>
