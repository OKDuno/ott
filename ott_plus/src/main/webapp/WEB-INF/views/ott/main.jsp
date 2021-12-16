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
          <li><a class="drop" href="#">Table</a>
            <ul>
              <li><a href="/review/title">추천 / 리뷰</a></li>
              <li><a href="/board/title">공유 / 자유</a></li>
            </ul>
          </li>
          <li><a class="drop" href="/ott/mywork">MyPage</a>
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
          <figcaption><em>01</em> <a href="#">Title 1 : ${recomlist[0]}</a></figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><img src="${recomlist[3]}" alt="">
          <figcaption><em>02</em> <a href="#">Title 2 : ${recomlist[2]}</a></figcaption>
        </figure>
      </li>
      <li class="one_third">
        <figure><img src="${recomlist[5]}" alt="">
          <figcaption><em>03</em> <a href="#">Title 3 : ${recomlist[4]}</a></figcaption>
        </figure>
      </li>
    </ul>
    <footer class="center"><a class="btn" href="#">~~~~바로가기</a></footer>
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
      <p class="btmspace-50">Eu tortor bibendum est faucibus gravida donec velit lacus blandit ultricies placerat a pharetra a nulla pellentesque sit donec scelerisque etiam et tellus eget urna.</p>
      <article><a href="#"><i class="fas fa-flag-checkered"></i></a>
        <h6 class="heading">Turpis nulla id nisl</h6>
        <p>Suspendisse fermentum purus commodo ultricies adipiscing augue ante facilisis dolor eget varius justo elit sit amet leo vivamus suspendisse&hellip;</p>
        <footer><a href="#">Read More &raquo;</a></footer>
      </article>
      <article><a href="#"><i class="fas fa-recycle"></i></a>
        <h6 class="heading">Scelerisque pellentesque</h6>
        <p>Sed leo duis adipiscing ligula eget risus curabitur id quam a odio malesuada euismod mauris faucibus aliquet urna vivamus et libero duis sed&hellip;</p>
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
          <li><a href="index.html"><i class="fas fa-lg fa-home"></i></a></li>
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
          <li><a class="imgover" href="#"><img src="/resources/images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="/resources/images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="/resources/images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="/resources/images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="/resources/images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="/resources/images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="/resources/images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="/resources/images/demo/100x100.png" alt=""></a></li>
          <li><a class="imgover" href="#"><img src="/resources/images/demo/100x100.png" alt=""></a></li>
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