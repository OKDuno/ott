<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">영화 드라마 추천게시판</h6>
    <ul>
      <li><a href="/ott/main">Home</a></li>
      <li><a href="/review/title">Table</a></li>
      <li><a href="/review/title">영화 드라마 추천게시판</a></li>
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
      <h1><b>영화 드라마 추천게시판</b></h1>
      <div class="scrollable">
        <table>
          <thead>
            <tr>
              <th>번호</th>
              <th>태그</th>
              <th>제목</th>
              <th>작성자</th>
              <th>작성일</th>
            </tr>
          </thead>
          <!-- <button id="regBtn" class="btn btn-xs pull-right">게시글 등록</button> -->
			<c:if test="${member != null}">
			<a class="btn" href="/review/insert">게시글 등록</a>
			</c:if>
			<tbody>
			
				<c:forEach items="${list}" var="review">
				
					<tr>
				       <td><c:out value="${review.rev_bno}"/></td>
				       <td><c:out value="${review.rev_teg }"/></td>
				       <td><a class="move" href='<c:out value="${review.rev_bno }"/>'><c:out value="${review.rev_title }"/></a></td>
				       <td><c:out value="${review.rev_writer }"/></td>
				       <td><fmt:formatDate pattern="yyyy-MM-dd" value="${review.rev_regdate }"/></td>
					</tr>
				</c:forEach>
			
			</tbody>
        </table>
      </div>
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
	  <div>
		<form id="searchForm" action = "/review/title" method="get">
			<span>
			<select name="type" style="display:inline; height:38px;">

				<option value="T">제목</option>
				<option value="C">내용</option>
				<option value="W">작성자</option>
				<option value="G">태그</option>
			</select>
			<input style="display:inline; height:38px;" type="text" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>">
			<input style="display:inline;" type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input style="display:inline;" type="hidden" name="amount" value="${pageMaker.cri.amount}">
			
			
			<button style="display:inline;  height:38px;" type="submit" class="btn btn- default">검색</button>
			</span>
		</form>
		</div>
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->



<form id='actionform' action="/review/title" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	<input type="hidden" name="type" value="<c:out value='${pageMaker.cri.type}'/>">
    <input type="hidden" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>">
</form>	

<script type="text/javascript">
$(document).ready(function(){
	
	var result = '<c:out value="${result}"/>';
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
	}
	
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
	actionform.append("<input type='hidden' name='rev_bno' value='"+ $(this).attr("href")+"'>");
	//console.log();
	actionform.attr("action","/review/read");
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


<%@ include file="../includes/footer.jsp" %>  

