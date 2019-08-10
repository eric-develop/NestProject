<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- Custom fonts for this template-->
<link href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${pageContext.request.contextPath}/resources/css/sb-admin-1.min2.css" rel="stylesheet">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script src="https://cdn.tiny.cloud/1/thfe5r10bknp9pbzrorb1rah5doyys51i6hsjncezu0tpruv/tinymce/5/tinymce.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ko_KR.js"></script>
<style>
@media (max-width:768px){
	.sidebar .nav-item .nav-link span{
   		display:none;
	}
}
</style>
<script>
var height;
	$(function(){
		var i = $('#text').css('height');
		var arr = i.split('p');
		
		console.log(arr[0]);
		height=arr[0]-2;
		console.log(height);
		tinymce.init({
			  selector:'textarea',
			  language : 'ko_KR',
			  height: height,
			  plugins: [
			    'link image imagetools table code'
			  ],
			  menubar:false,
			  toolbar: 'undo redo styleselect fontselect fontsizeselect bold italic alignleft aligncenter alignright alignjustify code table imageupload fileupload',
			  allow_script_urls: true,
			  content_css:"https://use.fontawesome.com/releases/v5.2.0/css/all.css",
			  extended_valid_elements: "button[class|id|onclick],script[src|async|defer|type|charset],div,span[*],i[*]",
			  setup: function(editor) {
				  
	              // create input and insert in the DOM
	              var inp2 = $('<input id="tinymce-uploader" type="file" name="pic" style="display:none">');
	              $(editor.getElement()).parent().append(inp2);
	              var inp = $('<input id="tinymce-uploader" type="file" name="pic" accept="image/*" style="display:none">');
	              $(editor.getElement()).parent().append(inp);

	              // add the image upload button to the editor toolbar
	              editor.ui.registry.addButton('imageupload', { 
	                icon: 'image',
	                onAction: function(e) { // when toolbar button is clicked, open file select modal
	                  inp.trigger('click');
	                }
	              });
	              
	              editor.ui.registry.addButton('fileupload', { 
	                icon: 'save',
	                onAction: function(e) { // when toolbar button is clicked, open file select modal
	                  inp2.trigger('click');
	                }
	              });
	               
	              
	              // when a file is selected, upload it to the server
	              inp.on("change", function(e){
	                uploadImage($(this), editor);
	              });
				  
	              inp2.on("change", function(e){
	                uploadFile($(this), editor);
	              });
	              
	            function uploadImage(inp, editor) {
	              var input = inp.get(0);
	              var data = new FormData();
	              data.append('files', input.files[0]);
	              var scriptLoader = new tinymce.dom.ScriptLoader();
	              
	              $.ajax({
	                url: '${pageContext.request.contextPath}/a/images',
	                type: 'POST',
	                data: data,
	                enctype: 'multipart/form-data',
	                dataType : 'json',
	                processData: false, // Don't process the files
	                contentType: false, // Set content type to false as jQuery will tell the server its a query string request
	                content_css:"",
	                success: function(data, textStatus, jqXHR) {
	                  editor.insertContent('<img class="content-img" src="${pageContext.request.contextPath}' + data.location + '" data-mce-src="${pageContext.request.contextPath}' + data.location + '" />');
	                  
	                },
	                error: function(jqXHR, textStatus, errorThrown) {
	                  if(jqXHR.responseText) {
	                    errors = JSON.parse(jqXHR.responseText).errors
	                    alert('Error uploading image: ' + errors.join(", ") + '. Make sure the file is an image and has extension jpg/jpeg/png.');
	                  }
	                }
	              });
	            }
	            
	            function uploadFile(inp, editor) {
	              var input = inp.get(0);
	              var data = new FormData();
	              data.append('files', input.files[0]);
	              var scriptLoader = new tinymce.dom.ScriptLoader();
	              
	              $.ajax({
	                url: '${pageContext.request.contextPath}/a/files',
	                type: 'POST',
	                data: data,
	                enctype: 'multipart/form-data',
	                dataType : 'json',
	                processData: false, // Don't process the files
	                contentType: false, // Set content type to false as jQuery will tell the server its a query string request
	                success: function(data, textStatus, jqXHR) {
	                	var file=data.location.split('/');
	                	console.log(file[file.length-1]);
	                	var fileName=file[file.length-1];
	                	
	                  editor.insertContent('<a href="${pageContext.request.contextPath}'+data.location+'" style="color:gray;font-weight:normal;"><i class="far fa-file-archive"></i> '+fileName+' </a>');
	                  
	                },
	                error: function(jqXHR, textStatus, errorThrown) {
	                  if(jqXHR.responseText) {
	                    errors = JSON.parse(jqXHR.responseText).errors
	                    alert('Error uploading image: ' + errors.join(", ") + '. Make sure the file is an image and has extension jpg/jpeg/png.');
	                  }
	                }
	              });
	            }
	            
	            
	            
	      }
				
		
			  });
	});

</script>    
<style>
	
	.sidebar.displaynone .nav-item .nav-link span{
		display:none;
	}
	.sidebar.displaynone .nav-link{
		margin-left: 0px;
	}
	
	
</style>
</head>

<body id="page-top">

	<style>
		@font-face { font-family: 'Godo'; font-style: normal; font-weight: 400; src: url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoM.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoM.woff') format('woff'); } @font-face { font-family: 'Godo'; font-style: normal; font-weight: 700; src: url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoB.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoB.woff') format('woff'); } .godo * { font-family: 'Godo', sans-serif; }
		* {font-family: 'Godo';}
	</style>
	
	<!-- Sidebar -->
	<ul	class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - 메뉴바 상단 -->
		<li class="nav-item dropdown no-arrow">
		
			<a class="nav-link dropdown-toggle" href="#" id="userDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> 
				<img class="img-profile rounded-circle"	src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
				<span class="mr-2 d-none d-lg-inline text-white-600 small" style="font-size:15px;">NEST</span>
			</a> 
			<!-- Dropdown - User Information -->
			<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="#"> <i
					class="fas fa-user-cog fa-sm fa-fw mr-2 text-gray-400"></i> 설정
				</a> 
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#" data-toggle="modal"
					data-target="#logoutModal"> <i
					class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
					로그아웃
				</a>
			</div>
			
		</li>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Divider -->
		<hr class="sidebar-divider">
		
		
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
		<!-- Heading -->
		<li class="nav-item">
			<style>
				
				.form-control {
				    display: block;
				    width: 100%;
				    height: 34px;
				    padding: 6px 12px;
				    font-size: 14px;
				    line-height: 1.42857143;
				    color: #555;
				    background-color: #fff;
				    background-image: none;
			
				    
				    border-radius: 4px;
				    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
				    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
				    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
				    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
				    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
				}
				.input-group .form-control:last-child{
					border-top-right-radius: 0;
	    			border-bottom-right-radius: 0;
				}
				.input-group .form-control {
				    position: relative;
				    z-index: 2;
				    float: left;
				    width: 100%;
				    margin-bottom: 0;
				    display: table-cell;
				}
				.input-group {
				    position: relative;
				    display: table;
				    border-collapse: separate;
				}
				.input-group-addon {
				    padding: 6px 12px;
				    font-size: 14px;
				    font-weight: 400;
				    line-height: 1;
				    color: #555;
				    text-align: center;
				    background:#fff;
				    
				    border-left:none;
				    border-radius: 4px;
				    width: 1%;
				    white-space: nowrap;
				    vertical-align: middle;
				    display: table-cell;
				}
				.input-group-addon:last-child {
				    border-left: 0;
				    border-top-left-radius: 0;
   					border-bottom-left-radius: 0;
				}
			</style>
			<form class="form-inline my-2 my-lg-0" style="padding:12px 16px">
				<div class="input-group" id="search" style="margin:0 auto;margin-bottom: 30px;">
					<input class="form-control" type="search"
						placeholder="Search" aria-label="Search" style="border:none">
					<span class="input-group-addon"><i class="fas fa-search"></i></span>
				</div>
			</form>
		</li>

		<!-- Nav Item - 연예/방송 카테고리 -->
		<li class="nav-item">
		
		<a class="nav-link collapsed newNote cate" href="#"
			data-toggle="collapse" data-target="#collapseBoardcast"
			aria-expanded="true" aria-controls="collapseBoardcast"> 
			<i class="fas fa-plus-circle"></i> <span style="font-size:16px;">새 노트</span>
		</a>
		<script>
			$('.newNote').click(function(){
				location.href="${pageContext.request.contextPath}/note/newNote.do"
			});
		</script>
		</li>

		<!-- Nav Item - 스포츠 -->
		<li class="nav-item">
		<a class="nav-link collapsed note cate" href="#"
			data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> 
			<i class="fas fa-sticky-note"></i> <span style="font-size:16px;">모든 노트</span>
		</a>
		<script>
			$('.note').click(function(){
				location.href="${pageContext.request.contextPath}/note/note.do?mno=${member.mNo}&trashcan=N"
			});
		</script>
		</li>

		<!-- Nav Item - 교육/금융/IT -->
		<li class="nav-item">
		<a class="nav-link collapsed notebook cate" href="#"
			data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> 
			<i class="fas fa-book"></i> <span style="font-size:16px;">노트북</span>
		</a>
		<script>
			$('.notebook').click(function(){
				location.href="${pageContext.request.contextPath}/notebook/notebook.do?mno=${member.mNo}"
			});
		</script>
		</li>

		<!-- Nav Item - 여행/음식/생물 -->
		<li class="nav-item">
		<a class="nav-link collapsed tag cate" href="#"
			data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> 
			<i class="fas fa-tag"></i> <span style="font-size:16px;">태그</span>
		</a>
		<script>
			$('.tag').click(function(){
				location.href="${pageContext.request.contextPath}/notebook/notebook.do"
			});
		</script>
		</li>

		<!-- Nav Item - 취미/생활 카테고리 -->
		<li class="nav-item">
		<a class="nav-link collapsed trash cate" href="#"
			data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> 
			<i class="fas fa-trash"></i> <span style="font-size:16px;">휴지통</span>
		</a>
		<script>
			$('.trash').click(function(){
				location.href="${pageContext.request.contextPath}/note/note.do?mno=${member.mNo}&trashcan=Y"
			});
		</script>
		</li>
		
		<!-- Nav Item - 취미/생활 카테고리 -->
		<li class="nav-item">
		<a class="nav-link collapsed cate" href="#"
			data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> 
			<i class="fab fa-stripe-s"></i> <span style="font-size:16px;">스페이스</span>
		</a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link collapsed cate" href="#"
			data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> 
			<i class="fas fa-star"></i> <span style="font-size:16px;">업그레이드</span>
		</a>
		</li>
		
		<li class="nav-item">
		<a class="nav-link collapsed community cate" href="#"
			data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> 
			<i class="fas fa-user-friends"></i> <span style="font-size:16px;">커뮤니티</span>
		</a>
		<script>
			$('.community').click(function(){
				window.open("${pageContext.request.contextPath}/board/board.do");
			});
		</script>
		</li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading" style="font-size:14px;">기타</div>

		<!-- Nav Item - Tables -->
		<li class="nav-item"><a class="nav-link" href=""> <i
				class="fas fa-fw fa-cog"></i> <span style="font-size:16px;">고객센터</span></a></li>

		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

		<!-- Sidebar Toggler (Sidebar) -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>

	</ul>
	<!-- End of Sidebar -->

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column" style="background:#fff">

		<!-- Main Content -->
		<div id="content">

			<!-- Topbar -->
			<nav class="navbar navbar-expand navbar-light bg-white topbar static-top" style="height:55px;margin:0 1rem;border-bottom:1px solid lightgray">
			
				<!-- Sidebar Toggle (Topbar) -->
				<button id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>

				<!-- Topbar Navbar -->
				<ul class="navbar-nav ml-auto">

					
						<style>
							.save{
								cursor:pointer;
							}
						</style>
					<c:if test="${topmenu eq 1}">
					<li class="nav-item dropdown no-arrow mx-1"><a
						class="nav-link dropdown-toggle save" onclick="firstSave()" id="alertsDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-save"></i>&nbsp;저장하기
					</a></li>
					
					</c:if>
					<c:if test="${topmenu eq 2}">
					<li class="nav-item dropdown no-arrow mx-1"><a
						class="nav-link dropdown-toggle save" onclick="afterSave()" id="alertsDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-save"></i>&nbsp;저장하기
					</a></li>
					</c:if>
					<c:if test="${topmenu eq 3}">
					<li class="nav-item dropdown no-arrow mx-1"><a
						class="nav-link dropdown-toggle save" onclick="afterSave()" id="alertsDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> <i class="fas fa-save"></i>&nbsp;저장하기
					</a></li>
					</c:if>
					
					
					<div class="topbar-divider d-none d-sm-block"></div>

					<!-- Nav Item - User Information -->
					<!-- 현재 로그인한 아이디를 보여주기 위함-->
					<li class="nav-item dropdown no-arrow"><a
						class="nav-link dropdown-toggle" href="#" id="userDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false"> 
							<i class="fas fa-ellipsis-v"></i>
					</a> <!-- Dropdown - User Information -->
					
					<c:if test="${topmenu eq 1}">
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="userDropdown">
							<a class="dropdown-item" href="#"> 저장 </a>
							<a class="dropdown-item" href="#"> 템플릿 적용</a>
						</div>
					</c:if>
					<c:if test="${topmenu eq 2}">
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="userDropdown">
							<a class="dropdown-item" href="#"> 저장
							</a> <a class="dropdown-item" href="#"> 이동...
							</a> <a class="dropdown-item" href="#"> 노트복제
							</a> <a class="dropdown-item" href="#"> 노트삭제
							</a>
						</div>
					</c:if>
					<c:if test="${topmenu eq 3}">
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="userDropdown">
							<a class="dropdown-item" href="#"> 새 노트북
							</a> <a class="dropdown-item" href="#"> 노트북 이름바꾸기
							</a> <a class="dropdown-item" href="#"> 노트북 삭제
							</a> 
						</div>
					</c:if>
					<c:if test="${topmenu eq 4}">
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="userDropdown">
							<a class="dropdown-item" href="#"> 저장
							</a> <a class="dropdown-item" href="#"> 이동...
							</a> <a class="dropdown-item" href="#"> 노트복제
							</a> <a class="dropdown-item" href="#"> 노트삭제
							</a>
						</div>
					</c:if>
					<c:if test="${topmenu eq 5}">
						<div
							class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
							aria-labelledby="userDropdown">
							<a class="dropdown-item" href="#"> 노트복원
							</a> <a class="dropdown-item" href="#"> 삭제
							</a> <a class="dropdown-item" href="#"> 전체삭제
							</a>
						</div>
					</c:if>
					</li>

				</ul>

			</nav>
			<!-- End of Topbar -->
		</div>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top">
		 <i class="fas fa-angle-up"></i>
		</a>
		
		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까??</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">로그아웃을 하시면 글을 작성하시거나 댓글을 남기실 수 없습니다.</div>
					<div class="modal-footer">
						<a class="btn btn-primary" href="login.html">로그아웃</a>
						<button class="btn btn-secondary" type="button" data-dismiss="modal">취소</button>
					</div>
				</div>
			</div>
		</div>
		<!-- Bootstrap core JavaScript-->
		<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<!-- Core plugin JavaScript-->
		<script src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
		<!-- Custom scripts for all pages-->
		<script src="${pageContext.request.contextPath}/resources/js/sb-admin-1.min.js"></script>
			
</body>

</html>
			