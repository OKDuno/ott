<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<html lang="">
<!-- To declare your language - read more here: https://www.w3.org/International/questions/qa-html-language-declarations -->
<head>
<title>OTT 플러스</title>
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
          <li><a class="drop" href="/member/myMovie?userId=${member.userId}">MyPage</a>
          	<ul>
              <li><a href="/member/myMovie?userId=${member.userId}">내가 본 작품</a></li>
              <li><a href="/member/myReview?userId=${member.userId}">내가 쓴 글</a></li>
              <li><a href="#">회원정보수정</a></li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>
 <!-- jQuery -->
<script src="/resources/vendor/jquery/jquery.min.js"></script>