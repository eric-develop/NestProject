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
<link
	href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link
	href="${pageContext.request.contextPath}/resources/css/sb-admin-1.min2.css"
	rel="stylesheet">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css">

<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.2.0/css/all.css">
<script
	src="https://cdn.tiny.cloud/1/thfe5r10bknp9pbzrorb1rah5doyys51i6hsjncezu0tpruv/tinymce/5/tinymce.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ko_KR.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/2.2.0/socket.io.js"
	integrity="sha256-yr4fRk/GU1ehYJPAs8P4JlTgu0Hdsp4ZKrx8bDEDC3I="
	crossorigin="anonymous"></script>
<!-- Bootstrap core JavaScript-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script
	src="${pageContext.request.contextPath}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<!-- Custom scripts for all pages-->
<script
	src="${pageContext.request.contextPath}/resources/js/sb-admin-1.min.js"></script>


<style>
@media ( max-width :768px) {
	.sidebar .nav-item .nav-link span {
		display: none;
	}
}

.sidebar.displaynone .nav-item .nav-link span {
	display: none;
}

.sidebar.displaynone .nav-link {
	margin-left: 0px;
}

@font-face {
	font-family: 'Godo';
	font-style: normal;
	font-weight: 400;
	src:
		url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoM.woff2')
		format('woff2'),
		url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoM.woff')
		format('woff');
}

@font-face {
	font-family: 'Godo';
	font-style: normal;
	font-weight: 700;
	src:
		url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoB.woff2')
		format('woff2'),
		url('//cdn.jsdelivr.net/korean-webfonts/1/corps/godo/Godo/GodoB.woff')
		format('woff');
}

.godo * {
	font-family: 'Godo', sans-serif;
}

* {
	font-family: 'Godo';
}

.nav-link {
	margin-left: 10px;
}

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
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.input-group .form-control:last-child {
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
	background: #fff;
	border-left: none;
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

.save {
	cursor: pointer;
}

.popupLayer {
	position: relative;
	display: none;
	background-color: #ffffff;
	border: solid 1px #d0d0d0;
	width: 340px;
	height: 80%;
	z-index: 1;
	padding: 10px 0px 10px 10px;
	height: 700px;
	margin-top: 10px;
}

.popupLayer div {
	position: relative;
	top: 5px;
	right: 5px;
}

#selfimg {
	width: 60px;
	height: 60px;
	margin: 10px;
	background: #ababab;
	float: left;
	display: inline-block;
}

#msgname {
	font-weight: 700px;
	font-size: 17px;
	float: left;
	padding-top: 20px;
}

#myself {
	border-bottom: 1px solid #d0d0d0;
	width: 100%;
	margin: 0;
	height: 120px;
	display: block;
}

#count_friend_div {
	width: 80%;
	float: right;
	display: block;
	margin-bottom: 10px;
}

#count_friend_div span {
	float: right;
}

#count_friend {
	font-weight: 600;
	font-size: 14px;
	color: #ababab;
	padding: 0;
	display: inline-block;
	float: left;
	margin-bottom: 10px;
}

.friend {
	border-bottom: 1px solid #d0d0d0;
	width: 100%;
	height: 80px;
	float: left;
}

#friend_img {
	width: 50px;
	height: 50px;
	margin: 10px 10px 10px 20px;
	background: #d0d0d0;
	float: left;
	display: inline-block;
}

#msg_serch {
	width: 100%;
	border-top: 1px solid #d0d0d0;
	margin: 0 auto;
	padding: 5px;
}

#msg_friend_name {
	font-weight: 700;
	font-size: 16px;
	width: 100%;
}

#msg_friend_name2 {
	font-weight: 400;
	font-size: 16px;
	height: 100%;
	padding-top: 20px;
	width: 100%;
}

#msg_parent {
	height: 80%;
	overflow: auto;
}

.friend
:last-child {
	border: none;
}

#msg_parent2 {
	display: none;
}

#msg_text {
	display: inline-block;
	text-align: center;
	font-size: 10px;
	padding-left: 20px;
	margin: 0 auto;
	padding-top: 45px;
}

#msg_date {
	display: inline-block;
	float: right;
	font-size: 10px;
}

#friend:last-child {
	border: none;
}

#msg_parent2 {
	display: none;
}

#msg_date {
	display: inline-block;
	float: right;
	font-size: 10px;
}

#chattingContainer {
	width: 395px;
	height: 660px;
	border: 1px solid gray;
	border-top: none;
	display: none;
	padding: 0px;
}

#chatArea {
	background: rgb(178, 199, 217);
	width: 393px;
	height: 500px;
	overflow: auto;
}

.chat_Content {
	background: rgb(255, 255, 102);
	padding: 10px;
	border-radius: 10px;
	display: inline-block;
	position: relative;
	margin: 10px;
	float: right;
	clear: both;
}

.chat_Content:after {
	content: '';
	position: absolute;
	right: 0;
	top: 50%;
	width: 0;
	height: 0;
	border: 20px solid transparent;
	border-left-color: rgb(255, 255, 102);
	border-right: 0;
	border-top: 0;
	margin-top: -3.5px;
	margin-right: -10px;
}

.other-Side {
	background: white;
	float: left;
	clear: both;
}

.other-Side:after {
	content: '';
	position: absolute;
	left: 0;
	top: 50%;
	width: 0;
	height: 0;
	border: 20px solid transparent;
	border-right-color: white;
	border-left: 0;
	border-top: 0;
	margin-top: -3.5px;
	margin-left: -10px;
}
</style>
</head>

<body id="page-top">

	<!-- Sidebar -->
	<ul
		class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
		style="background: #3B332E;" id="accordionSidebar">

		<!-- Sidebar - 메뉴바 상단 -->
		<li class="nav-item dropdown no-arrow"><a
			class="nav-link dropdown-toggle" href="#" id="userDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false" style="width: 130px;"> <img
				class="img-profile rounded-circle"
				src="https://source.unsplash.com/QAB-WJcbgJk/60x60"> <span
				class="mr-2 d-none d-lg-inline text-white-600 small"
				style="font-size: 15px;">${member.nickName}</span> <c:if
					test="${ memberAdmin eq 'Y' }">
					<img
						src="${pageContext.request.contextPath}/resources/images/admin24.png"
						style="margin-left: 100px;">
				</c:if>
		</a> <!-- 메신저 아이콘 --> <span id="left_nav_msg_div"> <a href="#"
				class="imgSelect" class="blind_view"> <i id="left_nav_msg"
					class="fas fa-comment"></i> <span id="left_nav_msg_count"><b>2</b></span></a>
				<!--  메세지 갯수 필요 -->
		</span> <!------------------ 메신저 바디 ----------------->
			<div class="popupLayer">

				<div style="height: 40px;">
					<span id="count_friend">멤버&nbsp;&nbsp;20</span>
					<!-- 사람 아이콘 -->
					<i class="fas fa-user" id="msg_main" onclick="msg_main();"
						style="display: inline-block; padding: 0px 10px; color: rgb(255, 119, 0); font-size: 20px; cursor: pointer;"></i>

					<!-- 메세지 아이콘 -->
					<i
						style="color: rgb(255, 119, 0); padding: 0px 10px; cursor: pointer;"
						id="msg_parent_change_icon" onclick="msg_parent_change_icon();"
						class="fas fa-comment"></i> <span onclick="closeMSG();"
						style="cursor: pointer; font-size: 1.5em; float: right;"
						title="닫기"><i class="fas fa-times"
						style="padding-right: 10px;"></i></span>

				</div>

				<div id="msg_serch">
					<input style="width: 100%; font-size: 14px; padding: 5px 10px;"
						type="text" placeholder="이름으로 검색">
				</div>
				<!-- -메세지 아이콘 클릭시 채팅 리스트로 이동- -->

				<div id="msg_parent2">
					<div id="msg_list">

						<div id="friend_img" class="rounded-circle"></div>
						<div id="msg_group" style="display: inline-block;">
							<span id="msg_friend_name">user</span>
							<p id="msg_text"
								style="padding: 0; display: inline-block; text-align: left; font-size: 12px; width: 100%; margin: 0 auto;">더운데
								수고 많으시네요.</p>
						</div>
						<p id="msg_date">2019/08/09</p>
					</div>


				</div>

				<!-- --채팅 메인 	 -->

				<div id="msg_parent">
					<div id="myself">
						<p style="margin: 0; padding-left: 10px">내 프로필</p>
						<div id="selfimg" class="rounded-circle"></div>
						<span id="msgname">${member.nickName}</span>
					</div>


				</div>

				<div id="chattingContainer">
					<div id="chatNav"
						style="background: rgb(169, 189, 209); position: relative; width: 393px; height: 55px; margin-left: 5px;">
						<div id="friend_img" class="rounded-circle"
							style="padding-bottom: 10px; margin: 0px 0px 0px 10px; width: 45px; height: 45px;"></div>
						<span id="receiver"></span>
						<button class="close" type="button" aria-label="Close"
							style="margin-righT: 5px;" onclick="closeChatContainer();">
							<span aria-hidden="true">×</span>
						</button>

					</div>
					<div id="chatArea" style="position: relative; margin-left: 5px;"></div>

					<div id="msgInputBox"
						style="position: relative; width: 385px; height: 95px; background: white; margin-left: 11px;">
						<div>
							<textArea id="msgContent"
								style="width: 300px; height: 90px; background: white; border: none;"></textArea>
							<div style="float: right;">
								<button class="btn btn-warning" id="sendMsg"
									style="background: rgb(255, 236, 66); width: 60px; margin: 5px 15px 0px 10px">전송</button>
							</div>
						</div>
					</div>

				</div>

			</div> <!------------------ 메신저 바디  끝 -----------------> <!-- Dropdown - User Information -->
			<div
				class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="#"> <i
					class="fas fa-user-cog fa-sm fa-fw mr-2 text-gray-400"></i> 설정
				</a>
				<c:if test="${ memberAdmin eq 'Y'}">
					<a class="dropdown-item"
						href="${pageContext.request.contextPath}/member/memberSummary.do"
						target="_blank"> <i
						class="fas fa-user-cog fa-sm fa-fw mr-2 text-gray-400"></i> 관리자 콘솔
					</a>
					<!-- <a style="font-size: 15px; color: black;">
	        		<span onclick="memberSummary();">관리자 콘솔</span>
	        	</a> -->
				</c:if>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#" data-toggle="modal"
					data-target="#logoutModal"> <i
					class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
					로그아웃
				</a>
			</div> <script>
		function memberSummary(){
			window.open("${pageContext.request.contextPath}/member/memberSummary.do");
		}
		</script></li>



		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Divider -->
		<hr class="sidebar-divider">

		<c:if test="${ sMember.serviceNo eq 3 and empty memberAdmin }">
			<a class="btn" data-toggle="modal"
				data-target="#myModal_businessInsert"
				style="width: 100%; border: none; font-size: 17px; color: #fff; margin-bottom: 0; background: #3b332e;">
				비즈니스 등록 </a>
		</c:if>
		
		<c:if test="${ memberAdmin eq 'Y'or member.bizNo ne 0 }">
      	<a class="btn" data-toggle="modal" data-target="#myModal_bizNameUpdate"
            	style="width: 100%; border: none; cursor:pointer;
            		   font-size: 17px; color: #fff; margin-bottom: 0; background:#3b332e;">
			    ${ bizName }
		</a>
		</c:if>

		<c:if test="${ memberInvitation eq 'N' }">
			<button type="button" class="btn" data-toggle="modal"
				data-target="#myModal_bmInsert"
				style="width: 100%; border: none; color: white; font-size: 14px;">
				비즈니스 그룹 요청</button>
		</c:if>

		<!-- The Modal -->
		<form method="post"
			action="${pageContext.request.contextPath}/business/insertBusiness.do">
			<div class="modal" id="myModal_businessInsert">
				<div class="modal-dialog">
					<div class="modal-content" style="height: 300px;">

						<!-- Modal Header -->
						<div class="modal-header">
							<h4 class="modal-title">비즈니스 등록</h4>
							<button type="button" class="close" data-dismiss="modal">&times;</button>
						</div>

						<!-- Modal body -->
						<div class="modal-body">
							<label class="col-md-3 col-form-label">Business is </label>
							<div class="col-md-11">
								<div class="form-group">
									<input type="text" class="form-control" name="bizName"
										id="bizName">
								</div>
							</div>
						</div>

						<!-- Modal footer -->
						<div class="modal-footer">
							<button type="submit" class="btn btn-info">등록</button>
						</div>

					</div>
				</div>
			</div>
		</form>

		<!-- The Modal -->
		<div class="modal" id="myModal_bmInsert">
			<div class="modal-dialog">
				<div class="modal-content" style="height: 250px;">

					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">비즈니스 그룹 요청</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						${ selectBizName } 비즈니스 그룹 요청이 왔습니다. <br> 수락하시겠습니까?
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="location.href='${ pageContext.request.contextPath }/business/updateBusinessMemberY.do'">수락</button>
						<button type="button" class="btn btn-danger"
							onclick="location.href='${ pageContext.request.contextPath }/business/updateBusinessMemberN.do'">거절</button>
						<!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button> -->
					</div>

				</div>
			</div>
		</div>
		
		<!-- The Modal -->
			<form method="post"
				action="${pageContext.request.contextPath}/business/updateBizName.do">
				<div class="modal" id="myModal_bizNameUpdate">
					<div class="modal-dialog">
						<div class="modal-content" style="height: 300px;">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title">비즈니스명 변경</h4>
								<button type="button" class="close" data-dismiss="modal">&times;</button>
							</div>

							<!-- Modal body -->
							<div class="modal-body">
								<label class="col-md-3 col-form-label">Business is </label>
								<div class="col-md-11">
									<div class="form-group">
										<input type="text" class="form-control" name="bizName"
											id="setBizName">
									</div>
								</div>
							</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="submit" class="btn btn-info">변경</button>
							</div>

						</div>
					</div>
				</div>
			</form>


		<!-- Heading -->
		<li class="nav-item">

			<form class="form-inline my-2 my-lg-0" style="padding: 12px 16px">
				<div class="input-group" id="search"
					style="margin: 0 auto; margin-bottom: 30px;">
					<input class="form-control" type="search" placeholder="Search"
						aria-label="Search" style="border: none; background: #e3e3e3d6">
					<span class="input-group-addon"
						style="border: none; background: #e3e3e3d6"><i
						class="fas fa-search"></i></span>
				</div>
			</form>
		</li>



		<li class="nav-item"><a class="nav-link collapsed newNote cate"
			href="#" data-toggle="collapse" data-target="#collapseBoardcast"
			aria-expanded="true" aria-controls="collapseBoardcast"
			style="background: #e7722e; border-radius: 40px 40px; margin: 0 0px 28px 15px;">
				<i class="fas fa-plus-circle" style="font-size: 17px"></i> <span
				style="font-size: 16px;">새 노트</span>
		</a></li>


		<li class="nav-item"><a class="nav-link collapsed note cate"
			href="#" data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> <i
				class="fas fa-sticky-note" style="font-size: 17px"></i> <span
				style="font-size: 16px;">모든 노트</span>
		</a></li>


		<li class="nav-item"><a class="nav-link collapsed notebook cate"
			href="#" data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> <i
				class="fas fa-book" style="font-size: 17px"></i> <span
				style="font-size: 16px;">노트북</span>
		</a></li>


		<li class="nav-item"><a class="nav-link collapsed tag cate"
			href="#" data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> <i
				class="fas fa-tag" style="font-size: 17px"></i> <span
				style="font-size: 16px;">태그</span>
		</a></li>


		<li class="nav-item"><a class="nav-link collapsed trash cate"
			href="#" data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> <i
				class="fas fa-trash" style="font-size: 17px"></i> <span
				style="font-size: 16px;">휴지통</span>
		</a></li>


		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> <i
				class="fab fa-stripe-s" style="font-size: 17px"></i> <span
				style="font-size: 16px;">스페이스</span>
		</a>
			<div id="collapseSport" class="collapse"
				aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<h6 style="padding: 10px; height: 40px;" class="collapse-header">
						<a class="sidebar-link" href="#"
							style="text-decoration: none; display: block;"
							data-toggle="modal" data-target="#exampleModal">스페이스만들기</a>
					</h6>
					<c:forEach items="${spaceList}" var="sList">

						<a style="cursor: pointer;" class="collapse-item"
							onclick="goToSpace(${sList.spaceNo});">${sList.spaceName}</a>

					</c:forEach>
				</div>
			</div> <!-------------------------------- 스페이스 생성하는 모달 ------------------------------>
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content" style="width: 650px; height: 400px;">
						<div class="modal-header" style="border: none;">
							<h5 class="modal-title" id="exampleModalLabel">스페이스 생성</h5>
							<button type="button" id="xBtn" class="close"
								data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>

						<form
							action="${pageContext.request.contextPath}/space/createSpace.do"
							method="post">
							<div class="modal-body">

								<div class="form-group">
									<input type="text" class="form-control" id="spaceName"
										name="spaceName" placeholder="스페이스 이름을 입력하세요">
								</div>

								<div class="form-group">
									<input type="text" class="form-control" id="spaceExplain"
										name="spaceExplain" placeholder="스페이스에 대한 설명을 적어주세요"
										style="height: 60px; margin: 0px;">
								</div>

								<div class="form-group form-check">
									<input type="checkbox" class="form-check-input"
										id="postSpaceDir" name="postSpaceDir"> <label
										class="form-check-label" for="dirPostCheck">스페이스 디렉토리에
										게시</label>
								</div>

								<label>접근 권한 설정 </label> <select
									class="form-control form-control-sm" id="rightSet"
									name="rightSet">
									<option value="none">선택</option>
									<option value="A1">다른 사람들이 접근 권한을 요청해야합니다.</option>
									<option value="A2">다른 사람들이 보기 권한을 가지고 접근할 수 있습니다.</option>
									<option value="A3">다른 사람들이 수정 권한을 가지고 접근할 수 있습니다.</option>
									<option value="A4">다른 사람들이 수정 권한 및 다른 사용자 초대권한을 가지고
										접근할 수 있습니다.</option>
								</select>

							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal" onclick="cancelCreateSpace();">취소</button>
								<button type="submit" class="btn btn-primary"
									onclick="createSpace();">만들기</button>
							</div>
						</form>

					</div>
				</div>
			</div></li>




		<li class="nav-item"><a class="nav-link collapsed cate service"
			href="" data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> <i
				class="fas fa-star" style="font-size: 17px"></i> <span
				style="font-size: 16px;">업그레이드</span>
		</a></li>

		<li class="nav-item"><a class="nav-link collapsed community cate"
			href="#" data-toggle="collapse" data-target="#collapseSport"
			aria-expanded="true" aria-controls="collapseSport"> <i
				class="fas fa-user-friends" style="font-size: 17px"></i> <span
				style="font-size: 16px;">커뮤니티</span>
		</a></li>

		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading" style="font-size: 14px;">기타</div>

		<!-- Nav Item - Tables -->
		<li class="nav-item"><a class="nav-link" href=""> <i
				class="fas fa-fw fa-cog" style="font-size: 17px"></i> <span
				style="font-size: 16px;">고객센터</span></a></li>

		<!-- Divider -->
		<hr class="sidebar-divider d-none d-md-block">

		<!-- Sidebar Toggler (Sidebar) -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>

	</ul>
	<!-- End of Sidebar -->

	<!-- Content Wrapper -->
	<div id="content-wrapper" class="d-flex flex-column"
		style="background: #fff">

		<!-- Main Content -->
		<div id="content">

			<!-- Topbar -->
			<nav class="navbar navbar-expand navbar-light topbar static-top"
				style="height: 55px; border-bottom: 1px solid lightgray; background: #f5f5f6ed /* #f1f1f2b5 */">

				<!-- Sidebar Toggle (Topbar) -->
				<button id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>

				<!-- Topbar Navbar -->
				<ul class="navbar-nav ml-auto">



					<c:if test="${topmenu eq 1}">
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle save" onclick="firstSave()"
							id="alertsDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-save"></i>&nbsp;저장하기
						</a></li>

					</c:if>
					<c:if test="${topmenu eq 2}">
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle save" onclick="afterSave()"
							id="alertsDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-save"></i>&nbsp;저장하기
						</a></li>
					</c:if>
					<c:if test="${topmenu eq 3}">
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle save" onclick="afterSave()"
							id="alertsDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
								class="fas fa-save"></i>&nbsp;저장하기
						</a></li>
					</c:if>


					<div class="topbar-divider d-none d-sm-block"></div>

					<!-- Nav Item - User Information -->
					<!-- 현재 로그인한 아이디를 보여주기 위함-->
					<li class="nav-item dropdown no-arrow"><a
						class="nav-link dropdown-toggle" href="#" id="userDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false" style="margin-right: 18px"> <i
							class="fas fa-ellipsis-v" style="color: #000"></i>
					</a> <!-- Dropdown - User Information --> <c:if test="${topmenu eq 1}">
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="firstSave()"> 저장 </a> <a
									class="dropdown-item" onclick="insertTemplate()"
									style="cursor: pointer"> 템플릿 저장</a> <a class="dropdown-item"
									onclick="template()" style="cursor: pointer"> 템플릿 적용</a>

							</div>
							<!-- Modal -->
							<div class="modal fade" id="myModal" role="dialog">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header" style="text-align: left">
											<h4 class="modal-title">템플릿 목록</h4>
											<button type="button" class="close" data-dismiss="modal">×</button>
										</div>
										<div class="modal-body" style="overflow: auto">

											<div>

												<c:forEach items="${tlist}" var="notebook"
													varStatus="status">
													<c:if test="${status.index/2 eq 0 && status.index > 0}">
														<div style="text-align: center; margin-bottom: 5px;">
													</c:if>
													<div style="display: inline-block;">
														<input class="tno" type="hidden" value="${notebook.tno }" />
														<div class="noteTemplate"
															style="border: 1px solid #ebebeb">
															<img src="/nest/resources/uploads/images/guzig.PNG"
																style="cursor: pointer; width: 190px; height: 220px" />
														</div>
														<div style="text-align: center">
															<b>${notebook.ttitle}</b>
														</div>
													</div>
													<c:if test="${status.index/2 eq 0 && status.index > 0}">
											</div>
						</c:if> </c:forEach>
		</div>

	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	</div>
	</div>

	</div>
	</div>

	</c:if>
	<c:if test="${topmenu eq 2}">
		<div
			class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
			aria-labelledby="userDropdown">
			<a class="dropdown-item" onclick="afterSave()"
				style="cursor: pointer">저장</a> <a class="dropdown-item"
				onclick="moveNote()" style="cursor: pointer">이동...</a> <a
				class="dropdown-item" onclick="insertTemplate()"
				style="cursor: pointer"> 템플릿 저장</a> <a class="dropdown-item"
				onclick="template()" style="cursor: pointer"> 템플릿 적용</a> <a
				class="dropdown-item" onclick="copyNote()" style="cursor: pointer">노트복제</a>
			<a class="dropdown-item" onclick="deleteOneNote()"
				style="cursor: pointer">노트삭제</a> <a class="dropdown-item"
				onclick="deleteAllNote()" style="cursor: pointer">노트전체삭제</a>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header" style="text-align: left">
						<h4 class="modal-title">템플릿 목록</h4>
						<button type="button" class="close" data-dismiss="modal">×</button>
					</div>
					<div class="modal-body" style="overflow: auto">

						<div>

							<c:forEach items="${tlist}" var="notebook" varStatus="status">
								<c:if test="${status.index/2 eq 0 && status.index > 0}">
									<div style="text-align: center; margin-bottom: 5px;">
								</c:if>
								<div style="display: inline-block;">
									<input class="tno" type="hidden" value="${notebook.tno }" />
									<div class="noteTemplate" style="border: 1px solid #ebebeb">
										<img src="/nest/resources/uploads/images/guzig.PNG"
											style="cursor: pointer; width: 190px; height: 220px" />
									</div>
									<div style="text-align: center">
										<b>${notebook.ttitle}</b>
									</div>
								</div>
								<c:if test="${status.index/2 eq 0 && status.index > 0}">
						</div>
	</c:if>
	</c:forEach>

	</div>

	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	</div>
	</div>

	</div>
	</div>
	</c:if>
	<c:if test="${topmenu eq 3}">
		<div
			class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
			aria-labelledby="userDropdown">
			<a class="dropdown-item" href="#"> 새 노트북 </a> <a
				class="dropdown-item" href="#"> 노트북 이름바꾸기 </a> <a
				class="dropdown-item" href="#"> 노트북 삭제 </a>
		</div>
	</c:if>
	<c:if test="${topmenu eq 4}">
		<div
			class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
			aria-labelledby="userDropdown">
			<a class="dropdown-item" href="#"> 저장 </a> <a class="dropdown-item"
				href="#"> 이동... </a> <a class="dropdown-item" href="#"> 템플릿 적용 </a>
			<a class="dropdown-item" href="#"> 노트복제 </a> <a class="dropdown-item"
				href="#"> 노트삭제 </a>
		</div>
	</c:if>
	<c:if test="${topmenu eq 5}">
		<div
			class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
			aria-labelledby="userDropdown">
			<a class="dropdown-item" onclick="restoreTrash()"
				style="cursor: pointer;"> 노트복원 </a> <a class="dropdown-item"
				onclick="deleteOneNote()" style="cursor: pointer;"> 삭제 </a> <a
				class="dropdown-item" onclick="deleteAllNote()"
				style="cursor: pointer;"> 전체삭제 </a>
		</div>
	</c:if>
	</li>

	</ul>

	</nav>
	<!-- End of Topbar -->
	</div>
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
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
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>
	</div>

</body>

<script>
	//////  전역 변수들 /////// 
	var height;
	var receiver = "";
	var roomNo = 0;
	var bizMemberCount = 0;
    /////////////////////////
    
    // 페이지 로딩될 때 실행되는 스크립트들 //
    
	$(function(){
	
	
	
   
	$.ajax({
		url : "${pageContext.request.contextPath}/member/selectBizMemberList.do",
		dataType : "json",
		success : function(data){
			
			data.forEach(function(value){
			 window.bizMemberCount +=1;
			 if(value.nickName != '${member.nickName}'){
				  
				 $('#msg_parent').append("<div id="+value.nickName+" class='friend' style='cursor:pointer;'>"+ "<div id='friend_img' class='rounded-circle'></div><p id='msg_friend_name2'>" + value.nickName + "</p></div>");

				};
			   
			});
			
			$('#count_friend').html("멤버 " + window.bizMemberCount);
			
		}
		
	});
	
	
	/* 클릭 클릭시 클릭을 클릭한 위치 근처에 레이어가 나타난다. */
	$('.imgSelect').on('click',function(e) {
		
		var sWidth = window.innerWidth;
		var sHeight = window.innerHeight;
		var oWidth = $('.popupLayer').width();
		var oHeight = $('.popupLayer').height();
		// 레이어가 나타날 위치를 셋팅한다.
		var divLeft = e.clientX + 20;
		var divTop = e.clientY + 5;
		// 레이어가 화면 크기를 벗어나면 위치를 바꾸어 배치한다.
		if (divLeft + oWidth > sWidth)
			divLeft -= oWidth;
		if (divTop + oHeight > sHeight)
			divTop -= oHeight;
		// 레이어 위치를 바꾸었더니 상단기준점(0,0) 밖으로 벗어난다면 상단기준점(0,0)에 배치하자.
		if (divLeft < 0)
			divLeft = 0;
		if (divTop < 0)
			divTop = 0;
		$('.popupLayer').css({
			"top" : divTop,
			"left" : divLeft,
			"z-index" : 1,
			"position" : "absolute"
		}).show();
		
		$('#chattingContainer').css({
			"top" : 0,
			"left" : divLeft+120,
			"z-index" : 1,
			"position" : "absolute"
		});
		
		$('.friend').each(function(){
			$(this).on('click',function(){
				
				chatStartFn($(this).attr('id'));
				$('#receiver').html($(this).attr('id'));
			});
			
		});
	
			
	});
	
	

	  var socket = io("localhost:3000");

	  socket.on('connect',function(){
	      console.log('서버와 연결');
	   });

		  // 메세지 전송 이벤트 발생
	   $('#sendMsg').on('click',function(){
		
	 	  msgContent = $('#msgContent').val();

	 	  socket.emit('sendMsg',{msg : msgContent, sender: '${member.nickName}', receiver: receiver,roomNo:roomNo});
	 	  
	 	  $('#msgContent').val('');
	   });

		  // 전송한 메세지 서버로부터 응답받는 이벤트 핸들러
	   socket.on('serverResponse',function(data){
		   console.log(data);
		  if(data.sender == '${member.nickName}'){

			 $('#chatArea').append("<div class='chat_Content'>" + data.sender  + " : <br> " + data.msg+ "</div>"); 
			
		  }else{
		  
			  $('#chatArea').append("<div class='chat_Content other-Side'>" + data.sender  + " : <br> " + data.msg+ "</div>"); 
		  }
				scrollDown();
	    });

	   socket.on('returnChatLogs',function(data){
		   var printHtml = "";

		   for(var logs in data.logs){
			
			   if(data.logs[logs].sender == '${member.nickName}'){
		 			printHtml+= "<div class='chat_Content'>" + data.logs[logs].sender  + ": <br>"+ data.logs[logs].content + "</div>";
		 			
		 			}else{	
		 				printHtml+= "<div class='chat_Content other-Side'>" + data.logs[logs].sender  + ": <br>" +data.logs[logs].content + "</div>";

		 			}
		   }
		   
			 $('#chatArea').append(printHtml);

	   });

	   $("#msgContent").keyup(function(e){
	 		if(e.key == 'Enter'){
	 			$("#sendMsg").trigger('click');
	 		}
	 	  });
	     
	     function scrollDown(){
	     	$('#chatArea').animate({
	             scrollTop: $('#chatArea').get(0).scrollHeight
	         }, 50);
	     }

	
	     
	     
	     function chatStartFn(nickName){
			  
	    	 $('#chattingContainer').show();
			  // 로그인한 사용자의 닉네임과 대화를 하고자하는 상대의 닉네임으로 RoomNo 생성 Or 조회
			  
			  $.ajax({
					url : '${pageContext.request.contextPath}/space/selectChatRoomNo.do?chatter1='+ '${member.nickName}' + '&chatter2=' + nickName,
					type : 'get',
				    dataType : 'json',
				    success : function(data){
				    	console.log(nickName + "과의 채팅 시작");
				    	window.roomNo = data;
				    	socket.emit('joinRoom',{roomNo : data});
					
				    }, error : function(msg){
				    	console.log("에러 발생");
				    }
				  
			  });
			
			  window.receiver = nickName;
			  console.log("receiver : " + window.receiver);
			  $('#chatArea').children().remove();
			 // 기존 채팅 내역 가져오기
			 socket.emit('callChatLogs',{receiver: receiver, sender: '${member.nickName}'});

		}	 

}); // 페이지 로딩될 때 실행되는 함수들 끝. // 

/////////////// 페이지 이동 관련 함수들 //////////////////////
$('.newNote').click(function(){
	location.href="${pageContext.request.contextPath}/note/newNote.do?mno=${member.mNo}"
});

$('.note').click(function(){
	location.href="${pageContext.request.contextPath}/note/note.do?mno=${member.mNo}&trashcan=N"
});

$('.notebook').click(function(){
	location.href="${pageContext.request.contextPath}/notebook/notebook.do?mno=${member.mNo}"
});

$('.tag').click(function(){
	location.href="${pageContext.request.contextPath}/notebook/notebook.do"
});

$('.trash').click(function(){
	location.href="${pageContext.request.contextPath}/note/note.do?mno=${member.mNo}&trashcan=Y"
});

$('.community').click(function(){
	window.open("${pageContext.request.contextPath}/board/board.do");
});

$('.service').click(function(){
	window.open("${pageContext.request.contextPath}/service/serviceView.do");
	/* location.href="${pageContext.request.contextPath}/service/serviceView.do"; */
});

function goToSpace(spaceNo){
	location.href="${pageContext.request.contextPath}/space/selectOneSpace.do?spaceNo=" + spaceNo;
}

////////////////////////////////////////////


// 메신저 관련 함수들 //
function msg_parent_change_icon() {
	    jQuery("#msg_parent").hide();
	    jQuery("#msg_parent2").show();
}
function msg_main() {
	   jQuery("#msg_parent2").hide();
	   jQuery("#msg_parent").show();
}

function closeMSG(){
	$('.popupLayer').hide();
}

function closeChatContainer(){
	$('#chattingContainer').hide();
}
////메신저 관련 함수들 ////


</script>

</html>
