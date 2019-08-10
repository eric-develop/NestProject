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

			<!-- Home 화면 구현부분 ////////////////////////////////////////////////////////////////////////////////////////////////////-->
			<div id="community" style="padding:10px 19px;">
				<div id="note" style="height: 800px;">
					<input id="nno" type="hidden" value="${nno}" />
			        <div class="Editor-Title" style="width:100%;height:7.33333%">
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
			      <div id="whitebox_footer">
			        <i class="fas fa-tags" style="font-size: 20px; color: #b8b8b8 ; margin-right: 10px;"></i>
			        <input type="text" placeholder="태그추가" style="border: none; width: 400px;">
			      </div>
			</div>	
		</div>
		<!-- End of Content Wrapper -->

		<!-- End of Page Wrapper -->
		<script>
			function firstSave(){
				var nno=0;
				var ntitle = $('#ntitle').val();
				var ncontent = tinyMCE.activeEditor.getContent();
				if($('#nno').val()!=null){
					console.log($('#nno').val());
					nno=$('#nno').val();
				}
				$.ajax({
					url:"${pageContext.request.contextPath}/note/firstSave.do",
					type: 'POST',
					data:{mno:${member.mNo},nno:nno,ntitle:ntitle,ncontent:ncontent},
					dataType:'json',
					success:function(data){
						alert("저장성공");
					},error : function(request,status,error){
					    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
					}
				});
				
			}
		</script>

</body>

</html>
