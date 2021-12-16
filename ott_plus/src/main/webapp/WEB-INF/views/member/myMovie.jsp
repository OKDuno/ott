<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	 	<title>게시판</title>
	 	<style type="text/css">
			li {list-style: none; float: left; padding: 6px;}
		</style>
	</head>
	<body>
		<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			
			<section id="container">
				<form role="form" method="get">
					<table>
						<tr><th>번호</th><th>장르</th><th>배우</th><th>평점</th></tr>
						<c:forEach items="${movie}" var = "list">
							<tr>
								<td><c:out value="${list.movie_title}" /></td>
								<td><c:out value="${list.movie_genre}" /></td>
								<td><c:out value="${list.movie_actor}" /></td>
								<td><c:out value="${list.movie_grade}" /></td>
								<td>${member.userId}</td>
							</tr>
						</c:forEach>

					</table>

				</form>
			</section>
			<hr />
		</div>
	</body>
</html>