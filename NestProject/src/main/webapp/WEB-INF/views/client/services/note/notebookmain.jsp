<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>노트북</title>
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
		<div>
			<div style="margin: 23px;">
				<h3>노트북</h3>
				<h4>내 노트북 목록</h4>
				<button id=modal style="color: red;" data-toggle="modal" data-target="#myModal" onclick="changeTitle()">노트북 이름바꾸기</button>
			</div>
			
			<ul>
				<c:forEach var="notebook" items="${list}" varStatus="status">
				<li>
				<input class="notebookCheck" type="checkbox" value="${notebook.nbno}" />
					${notebook.nbno} /${notebook.nbtitle} /${notebook.mno}
					<br />
				</li>
				</c:forEach>
			</ul>
	</div>
	<script>
	
	var i;
	$('.notebookCheck').click(function(){
		i = $(this).val();
		console.log(i);
		
		var checked = $(this).prop('checked');
		console.log(checked);
		if(checked){
			$('.notebookCheck').prop('checked', false);
			$(this).prop('checked', true);
			
			var detailInfo = $(this).parent().text().trim().split('/');
			
			location.href="${pageContext.request.contextPath}"
	            +"/notebook/goNotebook.do?nbno="+i;
	            
			$('#nbtitle').text(detailInfo[1]);
			$('#nbcontent').text(detailInfo[2]);
		}
		
	});
	
	/* function changeTitle(){
		location.href="${pageContext.request.contextPath}"
            +"/note/goAllTrash.do?mno=1&trashcan=Y";
	} */
	

	</script>
</body>
</html>