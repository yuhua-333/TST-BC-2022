<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>部门发放工资单主页</title>
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
<h4>员工工资管理系统</h4>                   
    <hr>
    <br>
    <c:if test="${empty requestScope.pagemsg}">
        没有任何用户信息！
    </c:if>
    <c:if test="${!empty requestScope.pagemsg}">
        <table border="1" cellpadding="10" cellspacing="0" class="table1">
        <thead>
            <tr>
                <td>员工部门</td>
                <td>员工工资</td>
            </tr>
            </thead>
            <c:forEach items="${requestScope.pagemsg.lists}" var="s">
                <tr>
                    <th>${s.part }</th>
                    <th>${s.sum_salary }</th>
                </tr>
            </c:forEach>        
        </table>    
    </c:if>

<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>

<td class="td2">
   <span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
   <span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
   <span>
       <c:if test="${requestScope.pagemsg.currPage != 1}">
           <a href="${pageContext.request.contextPath }/main?currentPage=1">[首页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/main?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
       </c:if>

       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
           <a href="${pageContext.request.contextPath }/main?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/main?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
</td>
</tr>
</table>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<hr>
  <a href="${pageContext.request.contextPath }/main?currentPage=1">返回主页</a>
</div>
</body>
</html>