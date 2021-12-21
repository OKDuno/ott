<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<style>
    #rev_reply{
        width:300px;
        margin:auto;
    }
</style>

	
<div id="root">
	
	<section id="container">
		<form name="updateForm" role="form" method="post" action="/review/replyUpdate">
			<input type="hidden" name="rev_bno" value="${replyUpdate.rev_bno}" readonly="readonly"/>
			<input type="hidden" id="rev_rno" name="rev_rno" value="${replyUpdate.rev_rno}" />
			<input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}"> 
			<input type="hidden" id="amount" name="amount" value="${cri.amount}"> 
			<div style = "text-align: center">
				<label for="rev_reply">댓글 내용</label>
				<input type="text" id="rev_reply" name="rev_reply" value="${replyUpdate.rev_reply}" style = "color:#000000"/>
			</div>
			<div style = "text-align: center">
				<button type="submit" class="btn btn-success">저장</button>
				<button type="button" id="cancel" class="btn btn-success">취소</button>
			</div>
		</form>
	</section>
	<hr />
</div>
		
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$("#cancel").on("click", function(){
				location.href = "/review/read?rev_bno=${replyUpdate.rev_bno}"
					   + "&pageNum=${cri.pageNum}"
					   + "&amount=${cri.amount}";
			})
			
		})
		
	</script>
 <%@ include file="../includes/footer.jsp" %> 