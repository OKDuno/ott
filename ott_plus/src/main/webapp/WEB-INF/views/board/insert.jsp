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
<form action="/board/insert" method="post">
          <div class="one_third first">
            <label for="name">제목 <span>*</span></label>
            <input size="22" required placeholder="제목을 입력하세요." name="title">
          </div>
          <div class="one_third">
            <label for="email">태그 <span>*</span></label>
	            넥플릭스<input type="radio" class="form-control" name="teg" value="넥플릭스">
			디즈니<input type="radio" class="form-control" name="teg" value="디즈니">
			HBO<input type="radio" class="form-control" name="teg" value="HBO">
			prime video<input type="radio" class="form-control" name="teg" value="prime video">
          </div>
          <div class="one_third">
            <label for="url">작성자</label>
            <input size="22" placeholder="작성자를 입력해주세요."
            name="writer" value= "${member.userId}" readonly="readonly">
          </div>
          <div class="block clear">
            <label for="comment">내용</label>
            <textarea cols="25" rows="10"
            placeholder="내용을 입력해주세요." name="content"></textarea>
          </div>
          <div>
            <input type="submit" name="submit" value="작성">
            &nbsp;
            <input type="reset" name="reset" value="다시작성">
          </div>
        </form>
</div>
</div>
</main>
</div>

<%-- 
<form action="/board/insert" method="post">
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

    <div class="form-group">
        <label>내용</label>
        <textarea class="form-control" rows="3"
        placeholder="내용을 입력해주세요." name="content"></textarea>
    </div>
    <div class="form-group">
        <label>작성자</label>
        <input class="form-control" placeholder="작성자를 입력해주세요."
        name="writer" value= "${member.userId}" readonly="readonly">
    </div>

    <button type="submit" class="btn btn-default">작성</button>
    <button type="reset" class="btn btn-default">다시작성</button>
</form>
 --%>
 <%@ include file="../includes/footer.jsp" %> 