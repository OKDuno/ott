<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html>
<head>
	<title>Home</title>
<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
<!-- 추가 --> 
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/resources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
<!--===============================================================================================--> 
<!-- 추가 끝 -->
</head>
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
<div class="limiter">
	<div class="container-login100" style="background-image: url('/resources/images/bg-01.jpg');">
		
		<div class="wrap-login100 p-t-30 p-b-50">
			<span class="login100-form-title p-b-41">
				Account Login
			</span>
	<form name='homeForm' method="post" action="/member/login" class="login100-form validate-form p-b-33 p-t-5">

		<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>

		<c:if test="${member == null}">
			<div class="wrap-input100 validate-input" data-validate = "Enter username">
				<label for="userId"></label>
				<input type="text" id="userId" name="userId" class="input100" placeholder="User name">
				<span class="focus-input100" data-placeholder="&#xe82a;"></span>
			</div>
			<div class="wrap-input100 validate-input" data-validate="Enter password">
				<label for="userPass"></label>
				<input type="password" id="userPass" name="userPass" class="input100" placeholder="Password">
				<span class="focus-input100" data-placeholder="&#xe80f;"></span>
			</div>
			<div class="container-login100-form-btn m-t-32">
				<button type="submit" class="login100-form-btn">Login</button>
				<button id="registerBtn" type="button" class="login100-form-btn">Sign Up</button>
			</div>
			<p align="center" style="color:#DCDCDC">테스트 계정은 dla / 123 입니다.</p>
		</c:if>	
	</form>
		</div>
	</div>	
</div>	

<!--  -->	
	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="/resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/resources/js/main.js"></script>
<!--  -->	
	
	
</body>
</html>

<!-- 로그인 페이지에 회원가입 버튼을 member/register로 보내는작업을 못해줘서 추가해줍니다.

아이디가 memberUpdateBtn이라는 버튼을 클릭했을 때 member/memberUpdateView 로 가라는 뜻인데

그러면 컨트롤러에  member/memberUpdateView로 가라는 말이 됩니다. -->