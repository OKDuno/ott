<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
	<link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="/resources/css/style.css">
	<!-- 회원가입 버튼 -->
	<link rel="stylesheet" href="/resources/css/registerStyleBtn.css">

 	<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	
  	<title>Sign Up 10</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	</head>
	<script type="text/javascript">
	$(document).ready(function(){
		//취소버튼
		$(".cencle").on("click", function(){
			location.href = "/ott/main"; //localhost 홈페이지로 이동
		})
		//회원가입 버튼
		$("#submit").on("click", function(){
			if($("#userId").val()==""){ //아이디 칸이 비었을때
				alert("아이디를 입력해주세요.");
				$("#userId").focus(); //focus() = 입력창에 커서 이동
				return false;
			}
			if($("#userPass").val()==""){ //비밀번호 칸이 비었을때
				alert("비밀번호를 입력해주세요.");
				$("#userPass").focus();
				return false;
			}
			if($("#userName").val()==""){ //이름이 비었을때
				alert("닉네임을 입력해주세요.");
				$("#userName").focus();
				return false;
			}
			var idChkVal = $("#idChk").val(); //중복버튼 
			if(idChkVal == "N"){ 
				alert("중복확인 버튼을 눌러주세요.");
			}else if(idChkVal == "Y"){
				$("#regForm").submit();
				alert("회원가입을 환영합니다! 다시 로그인 해주세요.")
			}
		});
	})
	
	//아이디 중복 체크
	function fn_idChk(){ 
		$.ajax({
			url : "/member/idChk",
			type : "post",
			dataType : "json",
			data : {"userId" : $("#userId").val()},
			success : function(data){
				if(data == 1){
					alert("중복된 아이디입니다.");
				}else if(data == 0){
					$("#idChk").attr("value", "Y");
					alert("사용가능한 아이디입니다.");
				}
			}
		})
	}
	</script>
<body>
<section class="ftco-section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-6 text-center mb-5">
				<h2 class="heading-section">Sign Up</h2>
			</div>
		</div>
		<div class="row justify-content-center">
			<div class="col-lg-10">
				<div class="wrap d-md-flex">
					<div class="text-wrap p-4 p-lg-5 d-flex img d-flex align-items-end" style="background-image: url(/resources/images/register.png);">
						<div class="text w-100">
							<h2 class="mb-4">Welcome to signup form</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
						</div>
		      		</div>
					<div class="login-wrap p-4 p-md-5">
      					<h3 class="mb-3">Create an account</h3>
						<form action="/member/register" method="post" class="signup-form">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group d-flex align-items-center">
				      			<label class="label" for="userId">아이디</label>
				      			<input type="text" id="userId" name="userId" class="form-control" placeholder="userId">
				      			<button class="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button>
				      		</div>
								</div>
								<div class="col-md-12">
									<div class="form-group d-flex align-items-center">
				      			<label class="label" for="passWord">비밀번호</label>
				      			<input type="passWord" id="userPass" name="userPass" class="form-control" placeholder="passWord">
				      		</div>
								</div>
								<div class="col-md-12">
									<div class="form-group d-flex align-items-center">
				      			<label class="label" for="name">성명</label>
				      			<input type="text" id="userName" name="userName" class="form-control" placeholder="name">
				      		</div>
								</div>
								<div class="col-md-12">
									<div class="container-login100-form-btn m-t-32">
			            			<button class="login100-form-btn" type="submit" id="submit">회원가입</button>
									<button class="login100-form-btn" type="button" onclick="location.href='/ott/main'">취소</button>
			            			</div>
								</div>
							</div>

	          </form>
       		<div class="w-100 text-center">
				<p class="mt-4">I'm already a member! <a href="/member/login">Sign In</a></p>
        	</div>
	          </div>

	      </div>
			</div>
		</div>
	</div>
</section>

<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
	
<!-- 		<section id="container"> -->
<!-- 			<form action="/member/register" method="post"> -->
<!-- 				<div class="form-group has-feedback"> -->
<!-- 					<label class="control-label" for="userId">아이디</label> -->
<!-- 					<input class="form-control" type="text" id="userId" name="userId" /> -->
<!-- 					<button class="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button> -->
<!-- 				</div> -->
<!-- 				<div class="form-group has-feedback"> -->
<!-- 					<label class="control-label" for="userPass">패스워드</label> -->
<!-- 					<input class="form-control" type="password" id="userPass" name="userPass" /> -->
<!-- 				</div> -->
<!-- 				<div class="form-group has-feedback"> -->
<!-- 					<label class="control-label" for="userName">성명</label> -->
<!-- 					<input class="form-control" type="text" id="userName" name="userName" /> -->
<!-- 				</div> -->
<!-- 				<div class="form-group has-feedback"> -->
<!-- 					<button class="btn btn-success" type="submit" id="submit">회원가입</button> -->
<!-- 					<button class="cencle btn btn-danger" type="button">취소</button> -->
<!-- 				</div> -->
<!-- 			</form> -->
<!-- 		</section> -->
		
	</body>
	
</html>