<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4><a href="/board/title">자유/공유 게시판</a></h4>
<h4><a href="/review/title">추천/리뷰 게시판</a></h4>
<!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>

<div>
<form id="searchForm" action = "/board/title" method="get">
	<select name="type">

		<option value="T">제목</option>
		<option value="C">내용</option>
		<option value="W">작성자</option>
		<option value="G">태그</option>
	</select>
	<input type="text" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	
	
	<button type="submit" class="btn btn- default">검색</button>
</form>
</div>

<table width="100%">

<thead>
	<tr>
		<td>번호</td>
		<td>태그</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
		
	</tr>
	
</thead>
<!-- <button id="regBtn" class="btn btn-xs pull-right">게시글 등록</button> -->
<button><a href="/board/insert">게시글 등록</a></button>
<tbody>

	<c:forEach items="${list}" var="board">
	
		<tr>
	       <td><c:out value="${board.bno}"/></td>
	       <td><c:out value="${board.teg }"/></td>
	       <td><a class="move" href='<c:out value="${board.bno }"/>'><c:out value="${board.title }"/></a></td>
	       <td><c:out value="${board.writer }"/></td>
	       <td><fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }"/></td>
		</tr>
	</c:forEach>

</tbody>

</table>

<ul class="pagination">
<!-- 페이징 처리부분 -->
<c:if test="${pageMaker.prev}">
	<li class="paginate_button previous ${pageMaker.cri.pageNum == 1 ? 'disabled':'' }">
	<a href="${pageMaker.startPage-1}">이전</a>
	</li>
</c:if>

<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
	<li class="paginate_button ${pageMaker.cri.pageNum ==num ? 'active':''}">
	<a href="${num}">${num}</a></li>
</c:forEach>

<c:if test="${pageMaker.next}">
	<li class="paginate_button next">
	<a href="${pageMaker.endPage+1}">다음</a>
	</li>
</c:if>
</ul>


<form id='actionform' action="/board/title" method="get">
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

//제목을 클릭했을때 동작하는 자바 스크립트
var actionform = $("#actionform");
$(".move").on("click", function(e){
	e.preventDefault(); //기본 이벤트 동작금지
	actionform.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+"'>");
	//console.log();
	actionform.attr("action","/board/read");
	actionform.submit();
	
});

//뒤로가기 눌러도 bno가 주소창에 쌓이지 않게 해준다.
$(window).bind("pageshow", function(event) {
    if ( event.originalEvent && event.originalEvent.persisted) {// BFCahe
        window.location.reload();
    }else{}//새로운페이지
});



</script>


<!-- //id="regBtn"인 게시글 등록 버튼의 이동 경로를 "/board/insert"로 변경
$("#regBtn").on("click",function(){
	self.location="/board/insert";
	
});
 -->




</body>
</html>

