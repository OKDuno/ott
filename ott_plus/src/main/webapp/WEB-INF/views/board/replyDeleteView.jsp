<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>

<div id="root">			
	<section id="container">
		<form name="updateForm" role="form" method="post" action="/board/replyDelete">
			<input type="hidden" name="bno" value="${replyDelete.bno}" readonly="readonly"/>
			<input type="hidden" id="rno" name="rno" value="${replyDelete.rno}" />
			<input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}"> 
			<input type="hidden" id="amount" name="amount" value="${cri.amount}"> 				
				<p style = "text-align: center">삭제 하시겠습니까?</p>
			<div style = "text-align: center">
				<button type="submit" class="btn btn-success">예 삭제합니다.</button>
				<button type="button" id="cancel" class="btn btn-success" >아니오. 삭제하지 않습니다.</button>
			</div>
		</form>
	</section>
	<hr />
</div>
		
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$("#cancel").on("click", function(){
				location.href = "/board/read?bno=${replyDelete.bno}"
					   + "&pageNum=${cri.pageNum}"
					   + "&amount=${cri.amount}";
			})
			
		})
		
	</script>
 <%@ include file="../includes/footer.jsp" %> 