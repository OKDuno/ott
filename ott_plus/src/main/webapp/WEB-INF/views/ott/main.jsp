<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>OTT플러스</title>
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
          <li><a href="/ott/main" title="Home"><i class="fas fa-home"></i></a></li>
<!--           <li><a href="/member/login" title="Login"><i class="fas fa-sign-in-alt"></i></a></li> -->
<!--           <li><a href="/member/register" title="Sign Up"><i class="fas fa-edit"></i></a></li> -->
          <li><c:if test="${member != null}"><a href="/member/logout" title="Logout"><i class="fas fa-sign-out-alt"></i></a></c:if></li>
          <li><c:if test="${member == null}"><a href="/member/login" title="Login"><i class="fas fa-sign-in-alt"></i></a></c:if></li>
		  <li><c:if test="${member == null}"><a href="/member/register" title="Sign Up"><i class="fas fa-edit"></i></a></c:if></li>
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
        <h1><a href="/ott/main">OTT Plus</a></h1>
      </div>
      <!-- ################################################################################################ -->
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <li class="active"><a href="/ott/main">Home</a></li>
          <li><a class="drop" href="/ott/netflix_list">TOP10</a>
            <ul>
              <li><a href="/ott/netflix_list">Netflix</a></li>
              <li><a href="/ott/disney_list">DisneyPlus</a></li>
              <li><a href="/ott/amazon_list">Amazon</a></li>
              <li><a href="/ott/hbo_list">HBO</a></li>
            </ul>
          </li>
          <li><a class="drop" href="/review/title">Table</a>
            <ul>
              <li><a href="/review/title">추천 / 리뷰</a></li>
              <li><a href="/board/title">공유 / 자유</a></li>
            </ul>
          </li>
          <li><a class="drop" href="/member/myPageView?userId=${member.userId}">MyPage</a>
          	<ul>
          	  <li><a href="/member/myPageView?userId=${member.userId}">마이페이지 설정</a></li>
              <li><a href="/member/myMovie?userId=${member.userId}">내가 본 작품</a></li>
              <li><a href="/member/myReview?userId=${member.userId}">내가 쓴 글</a></li>
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
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article class="center">
      <h3 class="heading underline">OTT PLUS</h3>
      <p>넷플릭스 디즈니플러스 아마존 HBO</p>
      <footer><a class="btn" href="/ott/netflix_list">OTT 순위 보러가기</a></footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<div class="wrapper row2">
  <article class="hoc container clear"> 
    <!-- ################################################################################################ -->
    <div class="center btmspace-80">
      <h6 class="heading underline font-x2">추천 영화 리스트 TOP 3</h6>
    </div>
    <ul class="nospace group figures btmspace-80">
    
      <li class="one_third first">
        <figure><img src="${recomlist[1]}" alt="">
          <figcaption><em>01</em> <a href="#">${recomlist[0]}</a></figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><img src="${recomlist[3]}" alt="">
          <figcaption><em>02</em> <a href="#">${recomlist[2]}</a></figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><img src="${recomlist[5]}" alt="">
          <figcaption><em>03</em> <a href="#">${recomlist[4]}</a></figcaption>
        </figure>
      </li>
    </ul>
    <footer class="center"><a class="btn" href="member/myMovie?userId=${member.userId}">내가 본 영화 바로가기</a></footer>
    <!-- ################################################################################################ -->
  </article>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<div class="bgded overlay startlt light" style="background-image:url('/resources/images/demo/backgrounds/bbb.jpg');">
  <section id="segment" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="two_third">
      <h6 class="heading underline font-x2">공지사항</h6>
      <p class="btmspace-50">Netflix, DisneyPlus, HBO, Amazon 세계 스트리밍 TOP10 제공, 추천/리뷰/요금제공유 게시판을 통해 이용자끼리 서로 원하는 정보 공유, 내가 본 영화를 기반으로 영화 추천 서비스 제공</p>
      <article><a href="#"><i class="fas fa-flag-checkered"></i></a>
        <h6 class="heading">OTT별 작품 추천/리뷰/요금제공유 게시판</h6>
        <p>Netflix, DisneyPlus, HBO, Amazon 총 4개의 태그를 이용해서 게시판에 글을 쓰고 OTT별로 서로 원하는 정보를 공유하며&hellip;</p>
        <footer><a href="/review/title">Read More &raquo;</a></footer>
      </article>
      <article><a href="#"><i class="fas fa-recycle"></i></a>
        <h6 class="heading">영화 추천 서비스</h6>
        <p>로그인 후 내가 본 영화를 등록하고 평점이 높은 영화와 비슷한 작품 TOP3를 추천하여 제공&hellip;</p>
        <footer><a href="#">Read More &raquo;</a></footer>
      </article>
    </div>
    <!-- ################################################################################################ -->
  </section>
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
          <li><a href="/ott/main"><i class="fas fa-lg fa-home"></i></a></li>
          <li><a href="/ott/netflix_list">Netflix TOP 10</a></li>
          <li><a href="/ott/disney_list">DisneyPlus TOP 10</a></li>
          <li><a href="/ott/hbo_list">HBO TOP 10</a></li>
          <li><a href="/ott/amazon_list">Amazon TOP 10</a></li>
          <li><a href="/review/title">추천/리뷰 게시판</a></li>
          <li><a href="/board/title">자유/공유 게시판</a></li>
        </ul>
      </nav>
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