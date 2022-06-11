<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>inser页面</title>
<style type="text/css">
body{ text-align:center} table {margin: auto;}
.div{ margin:0 auto; width:1000px; height:500px; border:3px solid black} 
</style>
</head>
<body>
<div class="div">
<h4>更新员工信息页</h4>
    <hr>
    <br>
    <br>
    <form action="${pageContext.request.contextPath }/update" method="post">
				员工编号：<input type="text" name="staff_id" id="staff_id"><br><br>
				员工姓名：<input type="text" name="name" id="name"><br><br>
				员工部门：<input type="text" name="part" id="part"><br><br>
				员工职位：<input type="text" name="roleName" id="roleName"><br><br>
				员工工资：<input type="text" name="salary" id="salary"><br><br>
				<br>
				<br>
				<input type="submit" id="add" value="更新"/>
	<p style="color:red">${update}</p> 
	</form>
	<br>
    <a href="${pageContext.request.contextPath }/main?currentPage=1">返回</a>
    </div>
</body>
</html>