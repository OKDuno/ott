<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">내가본 작품</h6>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">MyPage</a></li>
      <li><a href="#">내가 본 작품</a></li>
    </ul>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="content"> 
      <!-- ################################################################################################ -->
      <h1>내가 본 작품을 등록하고 그에따라 다른작품을 추천하게 해보자</h1>
      <img class="imgr borderedbox inspace-5" src="/resources/images/demo/imgr.gif" alt="">
      <p>Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur.</p>
      <p>Dapiensociis <a href="#">temper donec auctortortis cumsan</a> et curabitur condis lorem loborttis leo. Ipsumcommodo libero nunc at in velis tincidunt pellentum tincidunt vel lorem.</p>
      
      <h1>Table(s)</h1>
      <div class="scrollable">
        <table>
          <thead>
            <tr>
              <th>Title</th>
              <th>Genre</th>
              <th>Actor</th>
              <th>Score</th>
            </tr>
          </thead>
          <tbody>
            <c:forEach items="${inputlist}" var="board">
        <tr>
            <td><a href="#">${board.title}</a></td>
            <td>${board.genre}</td>
            <td>${board.actor}</td>
            <td>${board.score}</td>
        </tr>
		</c:forEach>
          </tbody>
        </table>
        
        <form action="/ott/test2" method="get">
        	<table>
	        	<tr>
	        		<td>영화작품 평점 등록</td>
	        	</tr>
	        	<tr>
	        		<td>제목 :<input type="text" name="test"><button type="submit" name="확인" >확인</button></td>
	        	</tr>
        	</table>
		</form>
      </div>
      <nav class="pagination">
        <ul>
          <li><a href="#">&laquo; Previous</a></li>
          <li><a href="#">1</a></li>
          <li><a href="#">2</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">6</a></li>
          <li class="current"><strong>7</strong></li>
          <li><a href="#">8</a></li>
          <li><a href="#">9</a></li>
          <li><strong>&hellip;</strong></li>
          <li><a href="#">14</a></li>
          <li><a href="#">15</a></li>
          <li><a href="#">Next &raquo;</a></li>
        </ul>
      </nav>
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<%@include file="../includes/footer.jsp" %>