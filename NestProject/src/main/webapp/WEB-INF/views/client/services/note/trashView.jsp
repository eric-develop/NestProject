<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<!DOCTYPE html>
<html style="height:100%">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
	.container2>div{
		height:100%;border:1px solid black; display:inline-block; float:left	
	}
</style>
</head>
<body style="height:100%">
	<div class="container2" style="height:100%">
		<div style="width:20%;">
			<div style="margin: 23px;">
				<h3>휴지통</h3>
				<button style="color: red;" onclick="deleteOneTrash();">삭제하기</button>
				<button style="color: blue;" onclick="deleteAllTrash();">전체삭제</button>
				<button style="color: green;" onclick="restoreTrash();">노트복원</button>
			</div>
			
			<ul>
				<c:forEach var="note" items="${list}" varStatus="status">
				<li>
				<input class="trashNoCheck" type="checkbox" value="${note.nno}" />
					${note.nno} /${note.ntitle} /${note.ncontent}
					<br />
				</li>
				</c:forEach>
			</ul>
			
		</div>
		<div style="width:80%;">
			
					<h3 class="title" id="title" style="color:red;"></h3> <br /><hr />
					<h4 class="content" id="content"></h4>
					<br />
			
		</div>
	</div>
	
	<script>
	
	var i;
	$('.trashNoCheck').click(function(){
		i = $(this).val();
		console.log(i);
		
		var checked = $(this).prop('checked');
		console.log(checked);
		if(checked){
			$('.trashNoCheck').prop('checked', false);
			$(this).prop('checked', true);
			
			var detailInfo = $(this).parent().text().trim().split('/');
			
			$('#title').text(detailInfo[1]);
			$('#content').text(detailInfo[2]);
		}
		
	});
	
	
	function deleteOneTrash(){
		location.href="${pageContext.request.contextPath}"
            +"/note/deleteOneTrash.do?nno="+i;
	}
	
	function deleteAllTrash(){
		location.href="${pageContext.request.contextPath}"
            +"/note/deleteAllTrash.do?mno=${member.mNo}";
	}
	
	function restoreTrash(){
		location.href="${pageContext.request.contextPath}"
            +"/note/restoreTrash.do?nno=" + i + "&trashcan=N";
	}
	</script>
</body>
</html>