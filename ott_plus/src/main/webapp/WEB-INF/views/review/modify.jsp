<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">영화 드라마 추천게시판</h6>
    <ul>
      <li><a href="/ott/main">Home</a></li>
      <li><a href="/review/title">Table</a></li>
      <li><a href="/review/title">영화 드라마 추천게시판</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>

<div class="wrapper row3">
<main class="hoc container clear"> 
<div class="content">
<div id="comments">
<form action="modify" method="post">
		<div class="one_third first">
		    <label>번호</label>
		    <input size="22" class="form-control" value="${review.rev_bno}"
		    name="rev_bno" readonly="readonly">
		</div>
          <div class="one_third first">
            <label for="name">제목</label>
            <input size="22" class="form-control" value="${review.rev_title}"
    			name="rev_title" >
          </div>
          <div class="one_third">
            <label for="email">태그</label>
	            넥플릭스<input type="radio" class="form-control" name="rev_teg" value="넥플릭스"  checked="checked">
			디즈니<input type="radio" class="form-control" name="rev_teg" value="디즈니">
			HBO<input type="radio" class="form-control" name="rev_teg" value="HBO">
			prime video<input type="radio" class="form-control" name="rev_teg" value="prime video">
          </div>
          <div class="one_third">
            <label for="url">작성자</label>
            <input size="22" class="form-control" value="${review.rev_writer}"
    			name="rev_writer" readonly="readonly">
          </div>
          <div class="block clear">
            <label for="comment">내용</label>
            <textarea cols="25" rows="10"
            class="form-control" name="rev_content" >${review.rev_content}</textarea>
          </div>
          <div>
            <button type="submit" class="btn btn-default">작성</button>
            &nbsp;
			<button type="reset" class="btn btn-default">다시작성</button>
          </div>
<input type="hidden" name="rev_bno" value="${review.rev_bno }" />
<input type="hidden" name="pageNum" value="${cri.pageNum }">
<input type="hidden" name="amount" value="${cri.amount }">
        </form>
</div>
</div>
</main>
</div>


<%-- 
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
 --%>


 <%@ include file="../includes/footer.jsp" %> 