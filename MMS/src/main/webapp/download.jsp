<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>下载页面</title>
<style> 
body{ text-align:center} table {margin: auto;}
.div{ margin:0 auto; width:1000px; height:500px; border:3px solid black} 
</style> 
</head>
<body>
<div class="div"> 
<h4>员工工资管理系统-文件下载页</h4>
<hr>
<br>
<br>
	<%-- <a href="${pageContext.request.contextPath }/download?filename=1.jpg">
    	文件下载 
	</a> --%>
	
	<a href="${pageContext.request.contextPath }/download?filename=<%=
                                   URLEncoder.encode("p1.png", "UTF-8")%>">
		图片p1.png文件下载 
	</a>
	
	<br>
	<br>
	<br>
	<a href="${pageContext.request.contextPath }/main?currentPage=1">返回</a>
</div>
</body>
</html>
