<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div id="breadcrumb" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <h6 class="heading">HBO TOP10</h6>
    <ul>
      <li><a href="/ott/main">Home</a></li>
      <li><a href="/ott/netflix_list">TOP10</a></li>
      <li><a href="/ott/hbo_list">HBO</a></li>
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
      <h1><b>HBO TOP10</b></h1>
      <p>Aliquatjusto quisque nam consequat doloreet vest orna partur scetur portortis nam. Metadipiscing eget facilis elit sagittis felisi eger id justo maurisus convallicitur.</p>
      <p>Dapiensociis <a href="#">temper donec auctortortis cumsan</a> et curabitur condis lorem loborttis leo. Ipsumcommodo libero nunc at in velis tincidunt pellentum tincidunt vel lorem.</p>
      
      <h1>HBO</h1>
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
          	<c:forEach var="hmlist" items="${hmlist}" varStatus="status">
          	<tr>
				<td>${hmlist.ranking}</td>
				<td>${hmlist.title}</td>
				<td>${hmlist.score}</td>
				<td width="150" height="210"><img src="/filepath/${hmlist.img}.jpg" style="max-width: 100%; height: auto;"/> </td>
				
				<td>${htlist[status.index].ranking}</td>
				<td>${htlist[status.index].title}</td>
				<td>${htlist[status.index].score}</td>
				<td width="150" height="210"><img src="/filepath/${htlist[status.index].img}.jpg" style="max-width: 100%; height: auto;"/> </td>
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