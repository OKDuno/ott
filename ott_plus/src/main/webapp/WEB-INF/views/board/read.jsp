<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">요금제공유 & 자유게시판</h6>
    <ul>
      <li><a href="/ott/main">Home</a></li>
      <li><a href="/review/title">Table</a></li>
      <li><a href="/board/title">요금제공유 & 자유게시판</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>

<div class="wrapper row3">
<main class="hoc container clear"> 
<div class="content">
<div id="comments">
<form id="actionForm" action="modify"  method="get">
          <div class="one_third first">
            <label for="name">제목 <span>*</span></label>
            <input size="22" class="form-control" value="${board.title}"
				name="title" readonly>
          </div>
          <div class="one_third">
            <label for="url">작성자</label>
            <input size="22" class="form-control" value="${board.teg}"
    			name="teg" readonly>
          </div>
          <div class="block clear">
            <label for="comment">내용</label>
            <textarea cols="25" rows="10"
            class="form-control" name="content" readonly>${board.content}</textarea>
          </div>
        <input type="hidden" id="bno" name="bno" value='<c:out value="${board.bno}"/>'>
		<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
		<input type="hidden" name="amount" value='<c:out value="${cri.amount}"/>'>
        </form>
    <c:if test="${board.writer eq member.userId}">
		<button data-oper="modify" class="btn btn-warning">수정</button>
		<button data-oper="delete" class="btn btn-danger">삭제</button>
	</c:if>
		<button data-oper="title" class="btn btn-primary">목록</button>
</div>
</div>
</main>
</div>


<!-- 댓글 -->	
<div class="wrapper row3">
<main class="hoc container clear"> 
<div class="content">
<div id="comments">
<form name="replyForm" method="post">
	<input type="hidden" id="bno" name="bno" value="${board.bno}" />
	<input type="hidden" id="PageNum" name="PageNum" value="${cri.pageNum}"> 
	<input type="hidden" id="amount" name="amount" value="${cri.amount}"> 
	<div>
    	<label for="replyer">댓글 작성자</label>
    	<input type="text" id="replyer" name="replyer"
    		value= "${member.userId}" readonly="readonly" />
    	<br/>
    	<label for="reply">댓글 내용</label><textarea id="reply" name="reply" cols="5" rows="5"></textarea>
  	</div>
  	<div>
  		<c:if test="${member != null}">
 	 		<button type="button" id="replyWriteBtn" class="btn btn- default">작성</button>
 		</c:if>
  	</div>
</form>
<!-- 댓글작성 -->
<div id="reply">
  <ol class="replyList">
    <c:forEach items="${replyList}" var="replyList">
      <li>
        <p>
        작성자 : ${replyList.replyer}<br />
        작성 날짜 :  <fmt:formatDate value="${replyList.replydate}" pattern="yyyy-MM-dd" />
        </p>
        <p>${replyList.reply}</p>
        <div>
        <c:if test="${board.writer eq member.userId}">
		  <button type="button" id="replyUpdateBtn" class="btn btn- default" data-rno="${replyList.rno}">수정</button>
		  <button type="button" id="replyDeleteBtn" class="btn btn- default" data-rno="${replyList.rno}">삭제</button>
		</c:if>  
		</div>
      </li>
    </c:forEach>   
  </ol>
</div>

</div>
</div>
</main>
</div>
	 

<!-- <form name="replyForm" method="post"> -->
<%--   <input type="hidden" id="bno" name="bno" value="${board.bno}" /> --%>
<%--   <input type="hidden" id="PageNum" name="PageNum" value="${cri.pageNum}">  --%>
<%--   <input type="hidden" id="amount" name="amount" value="${cri.amount}">  --%>

<!--   <div> -->
<!--     <label for="replyer">댓글 작성자</label><input type="text" id="replyer" name="replyer" -->
<%--     value= "${member.userId}" readonly="readonly" /> --%>
<!--     <br/> -->
<!--     <label for="repley">댓글 내용</label><input type="text" id="reply" name="reply" /> -->
<!--   </div> -->
<!--   <div> -->
<%--   	<c:if test="${member != null}"> --%>
<!--  	 <button type="button" class="replyWriteBtn">작성</button> -->
<%--  	</c:if> --%>
<!--   </div> -->
<!-- </form> -->
	

<!-- <div id="reply"> -->
<!--   <ol class="replyList"> -->
<%--     <c:forEach items="${replyList}" var="replyList"> --%>
<!--       <li> -->
<!--         <p> -->
<%--         작성자 : ${replyList.replyer}<br /> --%>
<%--         작성 날짜 :  <fmt:formatDate value="${replyList.replydate}" pattern="yyyy-MM-dd" /> --%>
<!--         </p> -->
<%--         <p>${replyList.reply}</p> --%>
<!--         <div> -->
<%--         <c:if test="${board.writer eq member.userId}"> --%>
<%-- 		  <button type="button" class="replyUpdateBtn" data-rno="${replyList.rno}">수정</button> --%>
<%-- 		  <button type="button" class="replyDeleteBtn" data-rno="${replyList.rno}">삭제</button> --%>
<%-- 		</c:if> --%>
<!-- 		</div> -->
<!--       </li> -->
<%--     </c:forEach>    --%>
<!--   </ol> -->
<!-- </div> -->



<script type="text/javascript" src="/resources/js/reply.js"></script>

<script>
	var fromObj=$("#actionForm") //form에대한 정보가 fromObj에 들어감 //form이라는 태그
		$('button').on("click",function(e){ //button이라는 태그
			e.preventDefault(); //기본 동작을 막고
			var operation = $(this).data("oper"); //버튼의 종류 확인 data-oper 속성값 확인
			console.log("버튼 종류는"+operation);
			if(operation === "delete"){ //버튼이 remove라면
				fromObj.attr("action", "/board/delete").attr("method","post");
			
			}else if(operation === "title"){ //목록버튼 누르면 첫페이지가 아니라 이전 페이지로 이동하게 함
				//self.location="/board/list";
				fromObj.find("#bno").remove(); //bno인 부분을 찾고 지운다.
				fromObj.attr("action","/board/title");///board/list로 변경해라
			
			}else if(operation === "modify"){
				//self.location="/board/modify?bno=${board.bno}";
				
			}
			fromObj.submit();
			
		
	});
	//댓글 작성
	$("#replyWriteBtn").on("click", function(){
		
		var formObj = $("form[name='replyForm']");
		formObj.attr("action", "/replyWrite").attr("method","post");
		formObj.submit();
	});
	
	//댓글 수정 View
	$("#replyUpdateBtn").on("click", function(){
		location.href = "/board/replyUpdateView?bno=${read.bno}"
						+ "&pageNum=${cri.pageNum}"
						+ "&amount=${cri.amount}"
						+ "&rno="+$(this).attr("data-rno");
	});

	//댓글 삭제 View
	$("#replyDeleteBtn").on("click", function(){
		location.href = "/board/replyDeleteView?bno=${read.bno}"
			+ "&pageNum=${cri.pageNum}"
			+ "&amount=${cri.amount}"
			+ "&rno="+$(this).attr("data-rno");
	});
	
</script>

<%@ include file="../includes/footer.jsp" %>  