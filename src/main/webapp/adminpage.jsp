<%@page import="com.spring.biz.user.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link type="text/css" rel="stylesheet" href="static/css/adminpage.css" /> 
<!--<link type="text/css" href="static/css/bootstrap.min.css" rel="stylesheet"></link> -->
<title>Insert title here</title>
</head>
<body topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0" style="background-color: #F6F6F6">
<form action="adminpage.do" method="post">
<div class="menu">
	<nav class="clearfix">
		<ul class="clearfix">
			<li><h5>사이트명</h5>
			<li><a href="getBoardList.jsp">공지게시판</a>
			<li><a href="login2.jsp">Q&A 게시판</a>
			<li><a href="login2.jsp">신고 게시판</a>
			<li><a href="login2.jsp">중개사 인증</a>
			<li><a href="logout.do">Log-out</a>
		</ul>
	</nav>
</div>

   <input name="id" type="hidden" value="${uservo.id}"><br>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</form>
</body>
</html>