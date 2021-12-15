<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="col-lg-6">
    <form role="form" action="register" method="post">
        <div class="form-group">
            <label>제목</label>
            <input class="form-control" placeholder="제목을 입력해주세요." name="title">
        </div>
        <div class="form-group">
            <label>태그</label>
            <input class="form-control" placeholder="태그를 입력해주세요." name="tag">
        </div>
        <div class="form-group">
            <label>작성자</label>
            <input class="form-control" placeholder="작성자를 입력해 주세요." name="writer">
        </div>
        <div class="form-group">
            <label>내용</label>
            <textarea class="form-control" rows="3"
            placeholder="내용을 입력해 주세요." name="content"></textarea>
        </div>
       
        <button type="submit" class="btn btn-default">작성완료</button>
        <button type="reset" class="btn btn-default">다시작성</button>
    </form>
</div>

</body>
</html>