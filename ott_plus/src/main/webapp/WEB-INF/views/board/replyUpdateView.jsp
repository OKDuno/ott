<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<style>
    #reply{
        width:300px;
        margin:auto;
    }
    div.button{
   margin: auto;
   width: 50%;
	}
</style>

<div id="root">	
<section id="container">
	<form name="updateForm" role="form" method="post" action="/board/replyUpdate">
		<input type="hidden" name="bno" value="${replyUpdate.bno}" readonly="readonly"/>
		<input type="hidden" id="rno" name="rno" value="${replyUpdate.rno}" />
		<input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}"> 
		<input type="hidden" id="amount" name="amount" value="${cri.amount}"> 
		<div style = "text-align: center">
			<label for="reply">댓글 내용</label>
			<input type="text" id="reply" name="reply" value="${replyUpdate.reply}" style = "color:#000000"/>
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
				location.href = "/board/read?bno=${replyUpdate.bno}"
					   + "&pageNum=${cri.pageNum}"
					   + "&amount=${cri.amount}";
			})
			
		})
		
	</script>		
 <%@ include file="../includes/footer.jsp" %> 