<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>

<form action="modify" method="post">
<input type="hidden" name="rev_bno" value="${review.rev_bno }" />
<input type="hidden" name="pageNum" value="${cri.pageNum }">
<input type="hidden" name="amount" value="${cri.amount }">

<div class="form-group">
    <label>번호</label>
    <input class="form-control" value="${review.rev_bno}"
    name="rev_bno" readonly="readonly">
</div>

<div class="form-group">
    <label>제목</label>
    <input class="form-control" value="${review.rev_title}"
    name="rev_title" >
</div>
<div class="form-group">
    <label>태그</label>
     <input class="form-control" value="${review.rev_teg}"
    name="rev_teg" >
</div>
<div class="form-group">
    <label>내용</label>
    <textarea class="form-control" rows="3"
     name="rev_content" >${review.rev_content}</textarea>
</div>
<div class="form-group">
    <label>작성자</label>
    <input class="form-control" value="${review.rev_writer}"
    name="rev_writer" readonly="readonly">
</div> 

<button type="submit" class="btn btn-default">작성</button>
<button type="reset" class="btn btn-default">다시작성</button>

</form>




</body>
</html>