<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
</style>
<body>
	<%
	String[] movieList = { "타이타닉", "시네마 천국", "혹성 탈출", "킹콩" };
	pageContext.setAttribute("movieList", movieList);
	%>n
	<c:forEach var="movie" items="${movieList }">
	${ movie}<br>
	</c:forEach>
</body>
</html>