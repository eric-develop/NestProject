<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.nestCor.nest.services.board.model.vo.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<c:import url="./common/menubar.jsp"/>
			
			<style>
				#cummunity>div{
					display:inline-block;
				}
			</style>
			<div style="width:100%;min-width:1560px;height:100%">
			<div id="second_container" value="slide" style="overflow:auto;height:100%;display:inline-block;width:20.33333%;min-width:364px;;padding: 0 15px;float:left;border-right:1px solid">
			      <div id="sc1" style="border-bottom: 1px solid #1a1a1a; padding: 14px;">
			        <div style="padding-top:10px;">
			        	<h5 style="display:inline-block;">모든 노트</h5>
			        	<p style="display:inline-block;float:right">0개의 노트</p>
			        </div>
			      </div>
			      <div id="sc2">
			        <div style="padding:10px;">
			          <i class="far fa-lightbulb"></i>
			          <span>
			            노트 활용 Tip !
			            NEST에 오신 것을 환영합니다.
			            NEST는 노트 필기, 작업 관리, 프로젝트 진행, 자료 진행, 자료 정리를 위한 최적의…
			          </span>
			        </div>
			      </div>
			      <style>
			      	li{
			      		list-style:none;
			      	}
			      </style>
			     
					<c:forEach var="note" items="${list}" varStatus="status">
						
							<div id="sc2" style="height:110px">
						        <div style="padding:10px;">
						          
						          <span>
						          <input class="noteCheck" type="checkbox" value="${note.nno}" style="cursor:zz"/>
						           <b>${note.ntitle}</b><br />
						           <p>&nbsp&nbsp&nbsp&nbsp${note.ncontent}</p>
						          </span>
						        </div>
						      </div>
						
					</c:forEach>
				
			 </div>
			<!-- Home 화면 구현부분 ////////////////////////////////////////////////////////////////////////////////////////////////////-->
			<div id="community" style="padding:10px 19px;display:inline-block;height:100%;width:76.66666%;">
				
			 <c:if test="${!empty list}">
				<div id="note" style="width:100%;height: 95%;">
			        <div class="Editor-Title" style="height:7.33333%">
						<div class="Title" style="width:100%;border-bottom:1px solid lightgray;height:100%">
							<input type="text" id="ntitle" name="ntitle" placeholder="제목 없음" style="font-size:30px;width:100%; height:100%; border:none; padding-left:10px" />
						</div>
					</div>
					<div id="text" style="overflow:auto;height:92.66666%;k">	
							<textarea id="ncontent" name="ncontent" style="border-color:transparent"><b>테스트입니다.</b></textarea>
					</div>
					<style>
						.tox-tinymce{
							border:none;
						}
						.tox-toolbar__group{
							display:none;
						}
					</style>
			      </div>
			      <div id="whitebox_footer" style="height:4.9999%">
			        <i class="fas fa-tags" style="font-size: 20px; color: #b8b8b8 ; margin-right: 10px;"></i>
			        <input type="text" placeholder="태그추가" style="border: none; width: 400px;">
			      </div>
			  </c:if>
			</div>
			</div>	
		</div>
		<!-- End of Content Wrapper -->

		<!-- End of Page Wrapper -->
		<script>
	var find=true;
	var i;
	var obj;
	$(function(){ // 처음 페이지 열 때
		$('.noteCheck').eq(0).prop('checked',true);
		i=$('.noteCheck').eq(0).val();
		obj=$('.noteCheck').eq(0);
		console.log(i+"/"+obj);
		check($('.noteCheck').eq(0).prop('checked'),obj);
	});
	
	$('.noteCheck').click(function(){ // 노트 선택 시 
		i = $(this).val();
		console.log(i);
		
		var checked = $(this).prop('checked');
		obj = $(this);
		console.log(checked);
		
		check(checked,obj);
		
	});
	
	function check(checked,obj){
		if(checked){
			$('.noteCheck').prop('checked', false);
			obj.prop('checked', true);
			
			$.ajax({
				url:'${pageContext.request.contextPath}/note/noteDetail.do',
				data:{nno:i},
				dataType:'json',
				success:function(data){
					$('#ntitle').val(data.ntitle);
					if(find) $('#ncontent').html(data.ncontent);
					else tinyMCE.activeEditor.setContent(data.ncontent);
					find=false;
				},error : function(request,status,error){
    			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
    			}
			});
		}
	}
	
	
	function deleteOneNote(){
		location.href="${pageContext.request.contextPath}"
            +"/note/goBackTrash.do?nno="+i+"&trashcan=Y";
	}
	
	function deleteAllNote(){
		location.href="${pageContext.request.contextPath}"
            +"/note/goAllTrash.do?mno=1&trashcan=Y";
	}
	function saveNote(){
		var ntitle = $('#ntitle').val();
		var ncontent = tinyMCE.activeEditor.getContent();
		$.ajax({
			url:'${pageContext.request.contextPath}/note/saveNote.do',
			type: 'POST',
			data:{nno:i,ntitle:ntitle,ncontent:ncontent},
			dataType:'json',
			success:function(data){
				if(data){
					alert("저장성공");
					console.log(obj.parent().children(1).text().trim());
					obj.parent().children(1).text(ntitle);
				}else{
					alert("저장실패");}				
				
			},error : function(request,status,error){
			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
function goTrash(){
		
		$.ajax({
			url:'${pageContext.request.contextPath}/notebook/trashGo.do',
			type: 'POST',
			data:{nno:i,trashcan:"Y"},
			dataType:'json',
			success:function(data){
				if(data){
					//alert("삭제성공");
					obj.parent().remove();
					$('.noteCheck').eq(0).prop('checked',true);
					check($('.noteCheck').eq(0).prop('checked'),$('.noteCheck').eq(0));
				}else{
					alert("삭제실패");}				
				
			},error : function(request,status,error){
			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	}
	</script>

</body>

</html>
