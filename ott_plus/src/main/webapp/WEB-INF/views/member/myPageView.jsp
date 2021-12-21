<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>

	<!-- 마이페이지 -->
	<link rel="stylesheet" href="/resources/css/myPage.css">
	<!-- jQuery -->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
 
</head>

<div class="wrap" !important>
  <div class="greenContainer">
    <div>
      <div class="grade"><p>아이디 "${member.userId}"님 환영 합니다.</p></div>
      <div class="name"><p>회원님의 닉네임은 "${member.userName}" 입니다.</p></div>
    </div>     
  </div>
  <div class="summaryContainer">
    <div class="item">
        <div class="number">${pageMaker.total }</div>
        <div>내가 쓴 글</div>
      </div>
      <div class="item">
        <div class="number">${pageMakerMovie.total }</div>
        <div>등록한 영화</div>
      </div>

  </div>
	<form name='homeForm' id="homeForm" method="get" action="/myPageView">
	<c:if test="${member != null }">   
  <div class="listContainer">
    <a class="item">
        <div class="icon">ii</div>
        <button id="memberUpdateBtn" type="button">닉네임변경</button><span class="circle"></span>
    </a>
    <a class="item">
        <div class="icon">ii</div>
        <button id="memberDeleteBtn" type="button">회원탈퇴</button>
    </a>
    <a class="item">
        <div class="icon">ii</div>
        <button id="logoutBtn" type="button">로그아웃</button>
    </a>
  </div>
    <input type="hidden" value="${member.userId}" />
	</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>    
</div>




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
			fromObj.attr("action", "/member/myMovie");
			fromObj.submit();
		})	 
			
	})
</script>

<%@include file="../includes/footer.jsp" %>
