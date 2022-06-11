<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>主页</title>
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
.div{ margin:0 auto; width:1000px; height:570px; border:3px solid black} 
</style>
<script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
 
        });
        function method() {
            var val = $("#staff_id").val();
            $.ajax({
                type:"GET",
                url:"getStaff",
                data:"staff_id="+val,
                async:true,   
                cache:true,  
                dataType:"json",   
                success:function(data){
                    $("#name").text(data.name);
                    $("#part").text(data.part);
                    $("#roleName").text(data.roleName);
                    $("#salary").text(data.salary);
                },
                error:function(){
                    console.log("发生错误")
                    alert("发生错误");
                },
                complete:function(){
                    console.log("ajax请求完事，最终操作在这里完成")
                }
            });
            // alert("测试异步")
        }
    </script>
</head>
<body>
<div class="div">
<h4>员工工资管理系统</h4>                   
    <hr>
     欢迎你：${currentUser}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${pageContext.request.contextPath}/insert.jsp"> 添加新员工</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${pageContext.request.contextPath }/fileUpload.jsp">文件上传</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${pageContext.request.contextPath }/download.jsp">文件下载</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${pageContext.request.contextPath }/slistmain">查看部门发放工资单</a><br><br>
    <hr>
    输入单个员工编号：<input type="text" id="staff_id"/>
    <button onclick="method();">获取信息</button>
    名字：<span id="name"></span>
    部门：<span id="part"></span>
    职位：<span id="roleName"></span>
    工资：<span id="salary"></span>
    <hr>
    <br>
    <c:if test="${empty requestScope.pagemsg}">
        没有任何用户信息！
    </c:if>
    <c:if test="${!empty requestScope.pagemsg}">
        <table border="1" cellpadding="10" cellspacing="0" class="table1">
        <thead>
            <tr>
                <td>员工编号</td>
                <td>员工姓名</td>
                <td>员工部门</td>
                <td>员工职位</td>
                <td>员工工资</td>
                <td>修改员工信息</td>
                <td>删除员工信息</td>
            </tr>
            </thead>
            <c:forEach items="${requestScope.pagemsg.lists}" var="s">
                <tr>
                    <th>${s.staff_id }</th>
                    <th>${s.name }</th>
                    <th>${s.part }</th>
                    <th>${s.roleName }</th>
                    <th>${s.salary }</th>
                    <th><a href="${pageContext.request.contextPath}/update.jsp">修改</a></th>
                    <th><a href="${pageContext.request.contextPath}/delete?staff_id=${s.staff_id}" onclick="return confirm('确定要删除吗')">删除</a></th>
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
<hr>
<br>
 <a href="${pageContext.request.contextPath }/logout">退出登录</a>
</div>
</body>
</html>