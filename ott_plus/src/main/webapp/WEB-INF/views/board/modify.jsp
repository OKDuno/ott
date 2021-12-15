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
<input type="hidden" name="bno" value="${board.bno }" />
<input type="hidden" name="pageNum" value="${cri.pageNum }">
<input type="hidden" name="amount" value="${cri.amount }">

<div class="form-group">
    <label>번호</label>
    <input class="form-control" value="${board.bno}"
    name="bno" readonly="readonly">
</div>

<div class="form-group">
    <label>제목</label>
    <input class="form-control" value="${board.title}"
    name="title" >
</div>
<div class="form-group">
    <label>태그</label>
     <input class="form-control" value="${board.teg}"
    name="teg" >
</div>
<div class="form-group">
    <label>내용</label>
    <textarea class="form-control" rows="3"
     name="content" >${board.content}</textarea>
</div>
<div class="form-group">
    <label>작성자</label>
    <input class="form-control" value="${board.writer}"
    name="writer" readonly="readonly">
</div> 

<button type="submit" class="btn btn-default">작성</button>
<button type="reset" class="btn btn-default">다시작성</button>

</form>




</body>
</html>