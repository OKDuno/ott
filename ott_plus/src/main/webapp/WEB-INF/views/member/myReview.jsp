<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
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
			${member.userId}
			<section id="container">
				<form id='actionform' role="form" method="get">
					<table>
						<tr><th>번호</th><th>태그</th><th>제목</th><th>작성자</th><th>작성일</th></tr>
						
							<c:forEach items="${myReview}" var="board">	
								<tr>
								      <td><c:out value="${board.bno}"/></td>
								      <td><c:out value="${board.teg }"/></td>
								      <td><a class="move" href='<c:out value="${board.bno }"/>'><c:out value="${board.title }"/></a></td>
								      <td><c:out value="${board.writer }"/></td>
								      <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }"/></td>
								</tr>
							</c:forEach>
		
					</table>

				</form>
			</section>
			<hr />
		</div>

<script>
//제목을 클릭했을때 동작하는 자바 스크립트
var actionform = $("#actionform");
$(".move").on("click", function(e){
	e.preventDefault(); //기본 이벤트 동작금지
	actionform.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+"'>");
	//console.log();
	actionform.attr("action","/board/read");
	actionform.submit();
	
});		
</script>
	</body>
</html>