<%@page import="org.expc.setting.Constant"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><%=Constant.projectTitle %></title>
	<link rel="stylesheet" href="/css/bootstrap.css">
	<script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/two.js"></script>
	<link rel="stylesheet" href="/css/index.css">
	<link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/style1.css">
</head>
<body class="myBody">
	
	<jsp:include page="/header.jsp" flush="true"></jsp:include>
    <div class="content"> 
      <jsp:include page="/zxdt.jsp"></jsp:include>
		<div class="right le-right1">
			<div class="position">
				<span>当前位置-</span><a href="/board/1/0.htm">中心动态 ></a><a href="">中心新闻</a>
			</div>
			<hr></hr>
			<div>
			<c:forEach var="ele" items="${pb.data }" > 
			<p class="list">
			<a href="/news/${ele.id }.htm">${ele.title }</a>
			<span><fmt:formatDate value="${ele.time }" pattern="[yyyy/MM/dd]"/></span>
			</p>
			</c:forEach>
			</div>
			<br>
			<div class="page">
			  <a href="/news/1/0.htm">&laquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;
			  <a href="/news/${pb.prePage }/0.htm">&lsaquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;
			  <span>${pb.pageIndex }/${pb.mxIndex }</span>&nbsp;&nbsp;&nbsp;&nbsp;
			  <a href="/news/${pb.nextPage }/0.htm">&rsaquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;
			  <a href="/news/${pb.mxIndex }/0.htm">&raquo;</a>
			</div>
			
			
			
		</div>
	</div>
	<jsp:include page="/footer.jsp" flush="true"></jsp:include>
	
</body>
</html>