<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
</head>
<body>
<h2>게시판</h2>(${pageMaker.total}) <br>
<button id="regBtn">게시글 등록</button>

<table width="100%" border="1">
    <thead>
        <tr>
            <th>순번</th>
            <th>제목</th>
            <th>태그</th>
            <th>작성자</th>
            <th>작성일</th>
        </tr>
    </thead>
    <tbody>
       <c:forEach items="${tblist}" var="board">
        <tr>
            <td>${board.bno}</td>
            <td><a class="move" href="${board.bno}" > <c:out value="${board.title}"/></a></td>
            <td>${board.tag}</td>
            <td>${board.writer}</td>
            <td>
            	<fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate}"/>
            </td>
        </tr>
		</c:forEach>
        
    </tbody>
</table>
<div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate">
	<ul class="pagination">

		<li class="paginate_button previous ${pageMaker.cri.pageNum==1 ? 'disabled' : ''  }  ">
			<a href="${pageMaker.cri.pageNum-1 }">Previous</a>
		</li>
		
		<c:forEach begin="${pageMaker.startPage}"  end="${pageMaker.endPage }" var="num"> 
			<li class="paginate_button ${pageMaker.cri.pageNum == num ? "active" : "" } ">
				<a href="${num}">${num}</a>
			</li>
		</c:forEach>
		        
		
		<li class="paginate_button next ${pageMaker.next==false ? 'disabled' : '' } ">
			<a ${pageMaker.next==false ? 'class="disabled"' : '' } href="${pageMaker.cri.pageNum+1 }">Next</a>
		</li>
	
	</ul>
</div>
                        
<form id="actionForm" action="/ott/list" method="get">
	<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
</form>


<script>

	$(window).bind("pageshow", function(event) {
	    if ( event.originalEvent && event.originalEvent.persisted) {// BFCahe
	        window.location.reload();
	    }else{}//새로운페이지
	});

	$("#regBtn").on("click",function(){
		self.location = "/ott/register";
	});//#은 id 값 읽을때. .은 class

	var actionForm = $("#actionForm");
	$(".paginate_button a").on("click", function(e) {
		e.preventDefault();
		console.log('click');
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	});
	
	$(".move").on("click", function(e){
		e.preventDefault();//기본 이벤트 동작 금지(여기서는 a href 페이지 이동)
		var str = "<input type='hidden' name='bno' value='"+$(this).attr("href")+"'>";
		console.log(str);
		actionForm.append(str);
		actionForm.attr("action", "/ott/get");
		actionForm.submit();
		
	});

</script>

</body>
</html>