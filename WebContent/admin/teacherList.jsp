<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/nIList.css">
<title></title>
</head>
<body>
	<a href="/teacherForm.fm" class="op">添加</a>
	<a class="op" onclick="del.submit()">删除选中条目</a>

    <br><br>
	<form action="/teacher/delete" method="post" class="asyn-form" id="del">
	<table>
		<tr><th>用户名</th><th>名字</th><th>邮箱</th><th>信息</th><th></th><th></th></tr>
		<c:forEach  var="ele" items="${pb.data }">
		<%-- <c:if test="${empty ele.reqUrl }"> --%>
			<tr>
			<td>${ele.username}</td>
			<td>${ele.name}</td>
			<td>${ele.email }</td>
			<td>${ele.intro }</td>
			<%-- <td>${ele.name }</td> --%>
			<%-- <td><a href="/nI/nIForm/${ele.id }.fm">编辑</a></td> --%>
			<td><input type="checkbox" name="id" value="${ele.username}"></td>
			<td><a href="/teacher/teacherForm/${ele.username }.fm">编辑</a></td>
			<%-- <td><a href="/nI/download/${ele.id }">下载</a> --%>
			</tr>
		<%-- </c:if> --%>
		</c:forEach>
	</table>
	
	</form>
	<center class="page">
			 <a href="/teacher/1/0.htm?view=/admin/teacherList.jsp">&laquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;
			 <a href="/teacher/${pb.prePage }/0.htm?view=/admin/teacherList.jsp">&lsaquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;
			 <span>${pb.pageIndex }/${pb.mxIndex }</span>&nbsp;&nbsp;&nbsp;&nbsp;
			 <a href="/teacher/${pb.nextPage }/0.htm?view=/admin/teacherList.jsp">&rsaquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;
			 <a href="/teacher/${pb.mxIndex }/0.htm?view=/admin/teacherList.jsp">&raquo;</a>
	</center>
</body>
</html>