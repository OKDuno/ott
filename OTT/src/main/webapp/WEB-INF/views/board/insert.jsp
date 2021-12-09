<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="insert" method="post">
    <div class="form-group">
        <label>제목</label>
        <input class="form-control" placeholder="제목을 입력하세요."
        name="title">
    </div>
    <div class="form-group">
        <label>태그</label>
		넥플릭스<input type="radio" class="form-control" name="teg" value="넥플릭스">
		디즈니<input type="radio" class="form-control" name="teg" value="디즈니">
		HBO<input type="radio" class="form-control" name="teg" value="HBO">
		prime video<input type="radio" class="form-control" name="teg" value="prime video">
    </div>
    
<!--     <div class="form-group">
        <label>OTT</label>
		넥플릭스<input type="checkbox" class="form-control" name="ott" value="넥플릭스">
		디즈니<input type="checkbox" class="form-control" name="ott" value="디즈니">
		HBO<input type="checkbox" class="form-control" name="ott" value="HBO">
		prime video<input type="checkbox" class="form-control" name="ott" value="prime video">
    </div> -->

    <div class="form-group">
        <label>내용</label>
        <textarea class="form-control" rows="3"
        placeholder="내용을 입력해주세요." name="content"></textarea>
    </div>
    <div class="form-group">
        <label>작성자</label>
        <input class="form-control" placeholder="작성자를 입력해주세요."
        name="writer"> <!-- id 기본 value="$~~~.id" -->
    </div>

    <button type="submit" class="btn btn-default">작성</button>
    <button type="reset" class="btn btn-default">다시작성</button>
</form>
</body>
</html>