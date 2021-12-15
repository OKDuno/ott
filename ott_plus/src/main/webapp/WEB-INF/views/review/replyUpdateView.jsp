<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
	<head>
		<script src="/resources/vendor/jquery/jquery.min.js"></script>
	 	<title>게시판</title>
	</head>
	<script type="text/javascript">
		$(document).ready(function(){
			var formObj = $("form[name='updateForm']");
			
			$(".cancel_btn").on("click", function(){
				location.href = "/review/read?rev_bno=${replyUpdate.rev_bno}"
					   + "&pageNum=${cri.pageNum}"
					   + "&amount=${cri.amount}";
			})
			
		})
		
	</script>
	<body>
	
		<div id="root">
			<header>
				<h1> 게시판</h1>
			</header>
			<hr />
			 
			<div>
				<a href="/review/title">목록</a>
			</div>
			<hr />
			
			<section id="container">
				<form name="updateForm" role="form" method="post" action="/review/replyUpdate">
					<input type="hidden" name="rev_bno" value="${replyUpdate.rev_bno}" readonly="readonly"/>
					<input type="hidden" id="rev_rno" name="rev_rno" value="${replyUpdate.rev_rno}" />
					<input type="hidden" id="pageNum" name="pageNum" value="${cri.pageNum}"> 
					<input type="hidden" id="amount" name="amount" value="${cri.amount}"> 
					<table>
						<tbody>
							<tr>
								<td>
									<label for="rev_reply">댓글 내용</label>
									<input type="text" id="rev_reply" name="rev_reply" value="${replyUpdate.rev_reply}"/>
								</td>
							</tr>	
							
						</tbody>			
					</table>
					<div>
						<button type="submit" class="update_btn">저장</button>
						<button type="button" class="cancel_btn">취소</button>
					</div>
				</form>
			</section>
			<hr />
		</div>
	</body>
</html>