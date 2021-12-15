<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
	<title>Home</title>
		<!-- 합쳐지고 최소화된 최신 CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<!-- 부가적인 테마 -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
 
</head>
<a href="/board/title">게시판</a><br /><!-- title이 아니라 메인화면으로 변경하기 -->
<script type="text/javascript">
	$(document).ready(function(){
		
		//로그아웃 버튼
		$("#logoutBtn").on("click", function(){
			location.href="logout"; //로그아웃 페이지로 이동
			alert("로그아웃 되었습니다.");
		})
		
		//회원가입 버튼
		$("#registerBtn").on("click", function(){
			location.href="register"; //회원가입 페이지로 이동
		})

		//마이페이지 버튼
		$("#myPageBtn").on("click", function(){
			location.href="myPageView";
		})		
	})
</script>
<body>
	<form name='homeForm' method="post" action="/member/login">
		<c:if test="${member == null}">
			<div>
				<label for="userId">아이디</label>
				<input type="text" id="userId" name="userId">
			</div>
			<div>
				<label for="userPass">비밀번호</label>
				<input type="password" id="userPass" name="userPass">
			</div>
			<div>
				<button type="submit">로그인</button>
				<button id="registerBtn" type="button">회원가입</button>
			</div>
		</c:if>
		<c:if test="${member != null }">
			<div>
				<p>아이디 "${member.userId}"님 환영 합니다.</p>
				<p>회원님의 닉네임은 "${member.userName}" 입니다.</p>
				<button id="myPageBtn" type="button">마이페이지</button>
				<button id="logoutBtn" type="button">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
</body>
</html>

<!-- 로그인 페이지에 회원가입 버튼을 member/register로 보내는작업을 못해줘서 추가해줍니다.

아이디가 memberUpdateBtn이라는 버튼을 클릭했을 때 member/memberUpdateView 로 가라는 뜻인데

그러면 컨트롤러에  member/memberUpdateView로 가라는 말이 됩니다. -->