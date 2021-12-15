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
<a href="/board/list">게시판</a><br />
<script type="text/javascript">
	$(document).ready(function(){
		//로그아웃 버튼
		$("#logoutBtn").on("click", function(){
			location.href="/member/logout"; //로그아웃 페이지로 이동
			alert("로그아웃 되었습니다.");
		})

		//회원정보 수정 버튼
		$("#memberUpdateBtn").on("click", function(){
			location.href="/member/memberUpdateView";
		})
		//회원탈퇴 버튼
		$("#memberDeleteBtn").on("click", function(){
			location.href="/member/memberDeleteView";
		})

		// 뒤로가기 버튼
		$("#backBtn").on("click", function(){
			location.href="/member/login";
		})		
		
		// 내가쓴글 버튼
		$("#myReviewBtn").on("click", function(){
			location.href="/member/myReview";
		})		
		// 내가본작품 버튼
		$("#myMovieBtn").on("click", function(){
 			var fromObj=$("#homeForm");
			/* location.href="/member/myMovie"; */
			fromObj.attr("action", "/member/myMovie").attr("method","get");
			fromObj.submit();
		})		
	})
</script>
<body>
	<form name='homeForm' id="homeForm" method="get" action="/myPageView">
		<c:if test="${member != null }">
			<div>
				<p>아이디 "${member.userId}"님 환영 합니다.</p>
				<p>회원님의 닉네임은 "${member.userName}" 입니다.</p>
				<button id="memberUpdateBtn" type="button">닉네임변경</button>
				<button id="memberDeleteBtn" type="button">회원탈퇴</button>
				<button id="logoutBtn" type="button">로그아웃</button>
				<button id="myReviewBtn" type="button">내가쓴글</button>
				<button id="myMovieBtn" type="button">내가본작품</button>				
				<input type="button" value="뒤로가기" onclick="history.back(-1);">
				<input type="text" value="${member.userId}" />
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