<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录界面</title>
<style> 
body{ text-align:center } 
.div{ margin:0 auto; width:500px; height:350px; border:3px solid black} 
</style> 
</head>
<body>
<br>
<br>
<h2>员工工资管理系统</h2>
<div class="div"> 
<br>
<br>
<span id="message">${msg}</span>
     <form action="${pageContext.request.contextPath }/login" method="post" onsubmit="return check()">
                          姓&nbsp;名:<input id="userName" type="text" name="userName"/>
          <br/><br/>
                          密&nbsp;码:<input id="password" type="text" name="password"/>
          <br/><br/>
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