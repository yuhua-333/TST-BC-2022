<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<style type="text/css">
    td{text-align: center;}
    .td2{text-align: right;}
    .table1{
            border:1px solid #ddd;
            width:900px;            
        }
        thead{
            background-color:lightblue;
        }
body{ text-align:center} table {margin: auto;}
.div{ margin:0 auto; width:1000px; height:500px; border:3px solid black} 
</style>
</head>
<body>
<div class="div">
<h4>员工工资管理系统-管理员注册页</h4>
    <hr>
    <br>
    <br>
    <form action="${pageContext.request.contextPath}/insertUser" method="post">
				姓名：<input type="text" name="username" id="username"><br><br>
				密码：<input type="text" name="password" id="password"><br><br>
				请输入邀请码：<input type="text" name="key" id="key"><br><br>
				<br>
				<br>
				<input type="submit" id="add" value="添加"/>
	<p style="color:red">${insertUser}</p> 
	</form>
	<br>
    <a href="${pageContext.request.contextPath }/success.jsp">返回登录</a>
    </div>
</body>
</html>