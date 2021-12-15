<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!--
Template Name: Besloor
Author: <a href="https://www.os-templates.com/">OS Templates</a>
Author URI: https://www.os-templates.com/
Copyright: OS-Templates.com
Licence: Free to use under our free template licence terms
Licence URI: https://www.os-templates.com/template-terms
-->
<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>내가 본 작품</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="/resources/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('/resources/images/demo/backgrounds/aaa.jpg');"> 
  <!-- ################################################################################################ -->
  <div class="wrapper row0">
    <div id="topbar" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div class="fl_left"> 
        <!-- ################################################################################################ -->
        <ul class="nospace">
          <li><i class="fas fa-phone"></i> +00 (123) 456 7890</li>
          <li><i class="far fa-envelope"></i> info@domain.com</li>
        </ul>
        <!-- ################################################################################################ -->
      </div>
      <div class="fl_right"> 
        <!-- ################################################################################################ -->
        <ul class="nospace">
          <li><a href="../index.html"><i class="fas fa-home"></i></a></li>
          <li><a href="#" title="Help Centre"><i class="fas fa-life-ring"></i></a></li>
          <li><a href="#" title="Login"><i class="fas fa-sign-in-alt"></i></a></li>
          <li><a href="#" title="Sign Up"><i class="fas fa-edit"></i></a></li>
        </ul>
        <!-- ################################################################################################ -->
      </div>
      <!-- ################################################################################################ -->
    </div>
  </div>
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
        <h1><a href="main">OTT Plus</a></h1>
      </div>
      <!-- ################################################################################################ -->
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class="active"><a href="main">Home</a></li>
          <li><a class="drop" href="netflix_list">TOP10</a>
            <ul>
              <li><a href="netflix_list">Netflix</a></li>
              <li><a href="disney_list">DisneyPlus</a></li>
              <li><a href="amazon_list">Amazon</a></li>
              <li><a href="hbo_list">HBO</a></li>
            </ul>
          </li>
          <li><a class="drop" href="#">Table</a>
            <ul>
              <li><a href="#">추천 / 리뷰</a></li>
              <li><a href="#">공유 / 자유</a></li>
            </ul>
          </li>
          <li><a class="drop" href="mywork">MyPage</a>
          	<ul>
              <li><a href="mywork">내가 본 작품</a></li>
              <li><a href="#">회원정보수정</a></li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
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
<div class="wrapper row4">
  <footer id="footer" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="center btmspace-50">
      <h6 class="heading">Besloor</h6>
      <nav>
        <ul class="nospace inline pushright uppercase">
          <li><a href="../index.html"><i class="fas fa-lg fa-home"></i></a></li>
          <li><a href="#">About</a></li>
          <li><a href="#">Contact</a></li>
          <li><a href="#">Terms</a></li>
          <li><a href="#">Privacy</a></li>
          <li><a href="#">Cookies</a></li>
          <li><a href="#">Disclaimer</a></li>
        </ul>
      </nav>
    </div>
    <!-- ################################################################################################ -->
    <hr class="btmspace-50">
    <!-- ################################################################################################ -->
    <div class="group">
      <div class="one_quarter first">
        <h6 class="heading">Ligula aenean id odio</h6>
        <ul class="nospace btmspace-30 linklist contact">
          <li><i class="fas fa-map-marker-alt"></i>
            <address>
            Street Name &amp; Number, Town, Postcode/Zip
            </address>
          </li>
          <li><i class="fas fa-phone"></i> +00 (123) 456 7890</li>
          <li><i class="far fa-envelope"></i> info@domain.com</li>
        </ul>
        <ul class="faico clear">
          <li><a class="faicon-facebook" href="#"><i class="fab fa-facebook"></i></a></li>
          <li><a class="faicon-google-plus" href="#"><i class="fab fa-google-plus-g"></i></a></li>
          <li><a class="faicon-linkedin" href="#"><i class="fab fa-linkedin"></i></a></li>
          <li><a class="faicon-twitter" href="#"><i class="fab fa-twitter"></i></a></li>
          <li><a class="faicon-vk" href="#"><i class="fab fa-vk"></i></a></li>
        </ul>
      </div>
      <div class="one_quarter">
        <h6 class="heading">Vivamus risus maecenas</h6>
        <p class="nospace btmspace-15">Nunc urna porttitor eget molestie a consequat at lectus donec sollicitudin.</p>
        <form method="post" action="#">
          <fieldset>
            <legend>Newsletter:</legend>
            <input class="btmspace-15" type="text" value="" placeholder="Name">
            <input class="btmspace-15" type="text" value="" placeholder="Email">
            <button type="submit" value="submit">Submit</button>
          </fieldset>
        </form>
      </div>
      <div class="one_quarter">
        <h6 class="heading">Dictum sit amet tortor</h6>
        <ul class="nospace linklist">
          <li><a href="#">Est a orci donec eleifend</a></li>
          <li><a href="#">Dignissim erat proin diam</a></li>
          <li><a href="#">Aenean vehicula augue</a></li>
          <li><a href="#">Et neque sed ligula nisl</a></li>
          <li><a href="#">Dictum quis tempus eu</a></li>
        </ul>
      </div>
      <div class="one_quarter">
        <h6 class="heading">Proin tincidunt venenatis</h6>
        <ul class="nospace clear latestimg">
          <li><a class="imgover" href="#"><img src="../images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="../images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="../images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="../images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="../images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="../images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="../images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="../images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="../images/demo/100x100.png" alt=""></a></li>
        </ul>
      </div>
    </div>
    <!-- ################################################################################################ -->
  </footer>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="wrapper row5">
  <div id="copyright" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <p class="fl_left">Copyright &copy; 2018 - All Rights Reserved - <a href="#">Domain Name</a></p>
    <p class="fl_right">Template by <a target="_blank" href="https://www.os-templates.com/" title="Free Website Templates">OS Templates</a></p>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="/resources/layout/scripts/jquery.min.js"></script>
<script src="/resources/layout/scripts/jquery.backtotop.js"></script>
<script src="/resources/layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>