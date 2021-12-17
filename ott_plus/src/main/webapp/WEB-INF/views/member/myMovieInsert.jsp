<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">내가 본 영화</h6>
    <ul>
      <li><a href="/ott/main">Home</a></li>
      <li><a href="/member/myMovie?userId=${member.userId}">Mypage</a></li>
      <li><a href="/member/myMovie?userId=${member.userId}">내가 본 영화</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
      <h1><b>내가 본 영화</b></h1>
      <div class="scrollable">
      <form action="/member/myMovieInsert" method="post">
        	<table>
	        	<thead>
		        	<tr>
		        		<th>작품명</th>
		        		<th>장르</th>
		        		<th>주연배우</th>
		        		<th>평점</th>
		        		<th>아이디</th>
		        	</tr>
		        </thead>
		        <tbody>
		        	<tr>
		        		<td><input type="text" name="movie_title" value="<c:out value="${testlist[0].title}"/>"></td>
						<td><input type="text" name="movie_genre" value="<c:out value="${testlist[0].genre}"/>"></td>
						<td><input type="text" name="movie_actor" value="<c:out value="${testlist[0].actor}"/>"></td>
						<td><input type="text" name="movie_grade"></td>
						<td><input type="text" name="userId" value="<c:out value="${member.userId}"/>"></td>
		        	</tr>
		        	<tr>
		        		<td><button type="submit">등록</button></td>
		        	</tr>
		        </tbody>
        	</table>
		</form>
        
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->



<form id='actionform' action="/member/myMovie" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	<input type="hidden" name="type" value="<c:out value='${pageMaker.cri.type}'/>">
    <input type="hidden" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>">
</form>	

<script type="text/javascript">
$(document).ready(function(){
	
/* 	var result = '<c:out value="${result}"/>';
	checkModal(result);
	history.replaceState({}, null, null);
	function checkModal(result){
		if(result === '' || history.state){ //비어있을 경우(즉, 목록보기 요청시) 또는 뒤로가기 일때
			//history.state: replaceState()사용이 안되있으면 null이 리턴
			//사용 되있으면 true리턴
			return;
	}		
	if(parseInt(result)>0){ //숫자일 경우만 실행(즉, 글 등록시에만)
		$(".modal-body").html("게시글" + result + "번이 등록되었습니다.")
	}
	//alert(result+"번의 글이 등록되었습니다.");
	$("#myModal").modal("show");
	} */
	
	var actionform = $("#actionform");	
	$(".paginate_button a").on("click",function(e){
		e.preventDefault(); //기본 이벤트 동작금지
		console.log('pagebar click');
		actionform.find("input[name='pageNum']").val($(this).attr("href"));
		actionform.submit();
	});
	
	
});


//뒤로가기 눌러도 bno가 주소창에 쌓이지 않게 해준다.
$(window).bind("pageshow", function(event) {
    if ( event.originalEvent && event.originalEvent.persisted) {// BFCahe
        window.location.reload();
    }else{}//새로운페이지
});



</script>


<%@ include file="../includes/footer.jsp" %>  




</body>
</html>

