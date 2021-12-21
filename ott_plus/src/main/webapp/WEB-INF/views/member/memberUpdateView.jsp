<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
	<head>
		<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	 	
	 	<!-- jQuery -->
		<script src="/resources/vendor/jquery/jquery.min.js"></script>
		<title>회원가입</title>
		<style>
		    .form-control{
		        width:300px;
		        margin:auto;
		    }
		</style>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
/* 			// 취소
			$(".cencle").on("click", function(){
				location.href = "/member/myPageView";
				alert("취소하였습니다.")
			}) */
			
		
			$("#submit").on("click", function(){
				if($("#userPass").val()==""){
					alert("비밀번호를 입력해주세요.");
					//$("#userPass").focus();
					return false;
				}
				if($("#userName").val()==""){
					alert("닉네임을 입력해주세요.");
					//$("#userName").focus();
					return false;
				}
				console.log("send_data");
				console.log($("#updateForm").serializeArray());
				$.ajax({
					url : "/member/passChk",
					type : "POST",
					dateType : "json",
					data : $("#updateForm").serializeArray(),
					success: function(data){
						console.log("데이터 값"+data);
						console.log(data);
						if(data=='true'){
							if(confirm("닉네임을 변경하시겠습니까?")){
								$("#updateForm").submit();
								alert("닉네임이 변경되었습니다. 다시 로그인해주세요");
							}
							
						}else{
							alert("패스워드가 틀렸습니다.");
							return;
							
						}
					}
				})
			});
		})
	</script>
	<body>
		<section id="container">
			<form id="updateForm" action="/member/memberUpdate" method="post">
				<div class="form-group has-feedback" style = "text-align: center">
					<label class="control-label" for="userId">아이디</label>
					<input class="form-control" type="text" id="userId" name="userId" value="${member.userId}" readonly="readonly"/>
				</div>
				<div class="form-group has-feedback" style = "text-align: center">
					<label class="control-label" for="userPass">패스워드</label>
					<input class="form-control" type="password" id="userPass" name="userPass" />
				</div>
				<div class="form-group has-feedback" style = "text-align: center">
					<label class="control-label" for="userName">닉네임</label>
					<input class="form-control" type="text" id="userName" name="userName" value="${member.userName}"/>
				</div>
			</form>
				<div class="form-group has-feedback" style = "text-align: center">
					<button class="btn btn-success" type="button" id="submit">닉네임변경</button>
					<!-- <button class="cencle btn btn-danger" type="button">취소</button> -->
				</div>
		</section>
		
<%@include file="../includes/footer.jsp" %>