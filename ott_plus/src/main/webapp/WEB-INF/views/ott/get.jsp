<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script> 
</head>
<body>

<div class="col-lg-6">
	<form id="actionForm" action="#" method="get">
		<input type="hidden" id="bno" name="bno" value="${board.bno }">
		<input type="hidden" name="pageNum" value="${cri.pageNum}">
		<input type="hidden" name="amount" value="${cri.amount}">
	</form>                     
    <div class="form-group">
        <label>제목</label>
        <input class="form-control" value="${board.title}"
        name="title" readonly >
    </div>
    <div class="form-group">
        <label>작성자</label>
        <input class="form-control" value="${board.writer}"
        name="writer" readonly>
    </div>
    <div class="form-group">
        <label>내용</label>
        <textarea class="form-control" rows="3"
        name="content" readonly>${board.content}</textarea>
     </div>         
                    
	<button data-oper="modify"  class="btn btn-success">수정</button>
	<button data-oper="remove" class="btn btn-danger">삭제</button>
	<button data-oper="list" class="btn btn-info" >목록보기</button>
</div>

<script>
 
 var formObj=$("#actionForm")// 제이쿼리를 이용해서 
 $('button').on("click",function(e){      
	 e.preventDefault(); //기본동작을 막고
	 var operation = $(this).data("oper"); //버튼의 종류확인 data-oper 속성값 확인
	 console.log("버튼종류는"+operation);
	 if(operation === 'remove'){
		 formObj.attr("action", "/ott/remove").attr("method", "post");
	 }else if(operation === 'list'){
		 //self.location="/board/list?pageNum=${cri.pageNum}&amount=${cri.amount}";
		 formObj.find("#bno").remove(); // id가 bno인것을 삭제 -> pageNum, amount만 남음
		 formObj.attr("action","/ott/list"); // 액션을 /board/list로 교체
	 }else if(operation === 'modify'){
		 //self.location="/board/modify?bno=${board.bno}";
		 formObj.attr("action", "/ott/modify");
	 }
	 formObj.submit();
 });

</script>

</body>
</html>