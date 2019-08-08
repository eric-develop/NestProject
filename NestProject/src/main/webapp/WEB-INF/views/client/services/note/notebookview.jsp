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
				<h3>My Notebook</h3>
				<button style="color: red;" onclick="deleteOneNote()">노트 삭제</button>
				<button style="color: blue;"onclick="reNote()">노트 복제</button>
				
			</div>
			
			<ul>
				<c:forEach var="note" items="${list}" varStatus="status">
				<li>
				<input class="noteCheck" type="checkbox" value="${note.nno}" />
					${note.nno} /${note.ntitle} /${note.ncontent} 
					<br />
				</li>
				</c:forEach>
			</ul>
			
		</div>
		<div style="width:80%;">
			<h3 class="ntitle" id="ntitle" style="color:red;"></h3> <br /><hr />
			<h4 class="ncontent" id="ncontent"></h4>
			<br/>
		</div>
	</div>
	<script>
	
	var i;
	$('.noteCheck').click(function(){
		i = $(this).val();
		console.log(i);
		
		var checked = $(this).prop('checked');
		console.log(checked);
		if(checked){
			$('.noteCheck').prop('checked', false);
			$(this).prop('checked', true);
			
			var detailInfo = $(this).parent().text().trim().split('/');
			
			$('#ntitle').text(detailInfo[1]);
			$('#ncontent').text(detailInfo[2]);
		}
		
	});
	
	function deleteOneNote(){
		location.href="${pageContext.request.contextPath}"
            +"/notebook/trashGo.do?nno="+i+"&trashcan=Y";
	} 
	
	function reNote(){
		$('.noteCheck').each(function(){
			if($(this).prop('checked')){
				var temp = $(this).parent().clone(true);
				var obj = $(this);
				console.log($(this));
				$.ajax({
	                url: '${pageContext.request.contextPath}/notebook/reNote.do',
	                data: {nno:i},
	                dataType : 'text',
	                success: function(data) {
	                  console.log($('.noteCheck'));
	                 
	                  temp.insertAfter(obj.parent());
	  				  temp.children('input:checkbox').prop('checked', false);
	                },
	                error : function(request,status,error){
	    			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	    			}
	              });
			}
		});
		
	}
	
	
	</script>
</body>
</html>