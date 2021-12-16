<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">Netflix TOP10</h6>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">TOP10</a></li>
      <li><a href="#">Netflix</a></li>
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
      
      <h1>Netflix</h1>
      <div class="scrollable">
        <table>
          <thead>
          	<tr>
          		<th colspan="4">Movie</th>
          		<th colspan="4">TV,Drama</th>
          	</tr>
            <tr>
              <th>Rank</th>
              <th>Title</th>
              <th>Score</th>
              <th>Img</th>
              <th>Rank</th>
              <th>Title</th>
              <th>Score</th>
              <th>Img</th>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var="nmlist" items="${nmlist}" varStatus="status">
          	<tr>
				<td>${nmlist.ranking}</td>
				<td>${nmlist.title}</td>
				<td>${nmlist.score}</td>
				<td width="150" height="210"><img src="/filepath/${nmlist.img}.jpg" style="max-width: 100%; height: auto;"/> </td>
				
				<td>${ntlist[status.index].ranking}</td>
				<td>${ntlist[status.index].title}</td>
				<td>${ntlist[status.index].score}</td>
				<td width="150" height="210"><img src="/filepath/${ntlist[status.index].img}.jpg" style="max-width: 100%; height: auto;"/> </td>
			</tr>
			</c:forEach>
          </tbody>
        </table>
      </div>
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