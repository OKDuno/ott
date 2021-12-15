<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style type="text/css">
	li {list-style: none; display:inline; padding: 6px;}
</style>
<ul>
	<li><a href="/board/title">자유/공유 게시판</a></li>
	<li><a href="/review/title">추천/리뷰 게시판</a></li>
	<li>
		<c:if test="${member != null}"><a href="/member/logout">로그아웃</a></c:if>
		<c:if test="${member == null}"><a href="/member/login">로그인</a></c:if>
		<c:if test="${member == null}"><a href="/member/register">회원가입</a></c:if>
	</li>
	<li>
		<c:if test="${member != null}">
			<p>${member.userId}님 안녕하세요.</p>
			<p>회원님의 닉네임은 "${member.userName}" 입니다.</p>
			<button><a href="/member/myPageView">마이페이지</a></button>			
		</c:if>
	</li>
</ul>