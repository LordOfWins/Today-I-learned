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
a {
	underline: none;
}
</style>
<body>
	<%
	String[] movieList = { "타이타닉", "시네마 천국", "혹성 탈출", "킹콩" };
	pageContext.setAttribute("movieList", movieList);
	%>
	<ul>
		<c:forEach var="movie" items="${movieList}" varStatus="status">
			<c:choose>
				<c:when test="${status.first}">
					<li style="font-weight: bold; color: red;"><a
						href="https://movie.daum.net/moviedb/main?movieId=1051">${movie}</a></li>
				</c:when>
				<c:otherwise>
					<li>${movie}</li>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:forEach var="movie" items="${movieList}" varStatus="status">
		${movie }
		<c:if test="${not status.last}">
		,
			</c:if>
		</c:forEach>
	</ul>
</body>
</html>