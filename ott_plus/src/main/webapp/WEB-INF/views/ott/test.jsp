<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/ott/test2" method="get">
	<h3>영화작품 평점 등록</h3><br>
	제목 : <input type="text" name="test"> 
	<button type="submit" name="확인" >확인</button>
</form>
<br>
<br>
<table width="50%" border="1">
    <thead>
        <tr>
            <th>제목</th>
            <th>장르</th>
            <th>주연배우</th>
            <th>평점</th>
        </tr>
    </thead>
    <tbody>
       <c:forEach items="${inputlist}" var="board">
        <tr>
            <td>${board.title}</td>
            <td>${board.genre}</td>
            <td>${board.actor}</td>
            <td>${board.score}</td>
        </tr>
		</c:forEach>
        
    </tbody>
</table>


</body>
</html>