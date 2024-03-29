<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jspf" %>

<%
String rPath = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NEW POSTING</title>
</head>
<body>
<%
if(user == null){
%>
	<b>You haven't logged in to see your postings.</b><br><br>
	<a href="<%=rPath%>/views/user/login"><button>LOG IN</button></a>
	<a href="<%=rPath%>/views/user/signup"><button>SIGN UP</button></a>
<%
} else {
%>
<b>글 등록</b><br><br>
<form method="POST" action="/board/insert">
	<table border="1">
		<tr>
			<td align="center"><b>제목</b></td>
			<!-- name => key로 받아감 -->
			<td><input type="text" name="bi_title"></td>
		</tr>
		<tr>
			<td align="center"><b>작성자</b></td>
			<!-- name => key로 받아감 -->
			<td><%= user.get("uiId") %></td>
		</tr>
		<tr>
			<td align="center"><b>내용</b></td>
			<td><textarea name="bi_content"></textarea></td>
		</tr>
		<tr>
			<th colspan="2"><button>글쓰기</button></th>
		</tr>
	</table>
</form>
<%
}
%>
</body>
</html>