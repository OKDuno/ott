<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="/resources/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>
<title>Besloor</title>
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
          <li><a href="/ott/main"><i class="fas fa-home"></i></a></li>
          <li><a href="#" title="Help Centre"><i class="fas fa-life-ring"></i></a></li>
          <li><a href="/member/login" title="Login"><i class="fas fa-sign-in-alt"></i></a></li>
          <li><a href="/member/register" title="Sign Up"><i class="fas fa-edit"></i></a></li>
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
              <li><a href="/review/title">추천 / 리뷰</a></li>
              <li><a href="/board/title">공유 / 자유</a></li>
            </ul>
          </li>
          <li><a class="drop" href="mywork">MyPage</a>
          	<ul>
              <li><a href="/ott/mywork">내가 본 작품</a></li>
              <li><a href="/member/myMovie?userId=${member.userId}">내가 본 작품2</a></li>
              <li><a href="/member/myReview?userId=${member.userId}">내가 쓴 글</a></li>
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
  <div id="pageintro" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <article class="center">
      <h3 class="heading underline">OTT PLUS</h3>
      <p>넷플릭스 디즈니플러스 아마존 HBO</p>
      <footer><a class="btn" href="netflix_list">OTT 순위 보러가기</a></footer>
    </article>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->
</div>
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
</body>
</html>