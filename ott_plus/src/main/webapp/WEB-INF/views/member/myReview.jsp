<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">내가 쓴 글</h6>
    <ul>
      <li><a href="/ott/main">Home</a></li>
      <li><a href="/member/myMovie?userId=${member.userId}">Mypage</a></li>
      <li><a href="/member/myReview?userId=${member.userId}">내가 쓴 글</a></li>
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
      <h1><b>내가 쓴 글</b></h1>
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
          
			<tbody>
			
				<c:forEach items="${myReview}" var="board">	
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
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->



<form id='actionform' action="/member/myReview" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
	<input type="hidden" name="type" value="<c:out value='${pageMaker.cri.type}'/>">
    <input type="hidden" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>">
</form>	

<script type="text/javascript">
$(document).ready(function(){
	
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

//제목을 클릭했을때 동작하는 자바 스크립트
	var actionform = $("#actionform");
	$(".move").on("click", function(e){
		e.preventDefault(); //기본 이벤트 동작금지
		actionform.append("<input type='hidden' name='bno' value='"+ $(this).attr("href")+"'>");
		//console.log();
		actionform.attr("action","/board/read");
		actionform.submit();
		
	});	

</script>


<%@ include file="../includes/footer.jsp" %>  

</body>
</html>