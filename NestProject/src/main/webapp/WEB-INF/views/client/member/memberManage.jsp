<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="${pageContext.request.contextPath }/resources/assets/img/apple-icon.png">
<link rel="icon" type="image/png"
	href="${pageContext.request.contextPath }/resources/assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Now UI Dashboard by Creative Tim</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<!-- CSS Files -->
<link
	href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/resources/assets/css/now-ui-dashboard.css?v=1.3.0"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link
	href="${pageContext.request.contextPath }/resources/assets/demo/demo.css"
	rel="stylesheet" />

<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.4.1.min.js"></script>

<style>
.ManageUsers-TabBar {
	display: flex;
	margin-top: 12px;
	position: relative;
}

.ManageUsers-Tab {
	box-sizing: border-box;
	flex-grow: 1;
	flex-basis: 0;
	padding-bottom: 8px;
	cursor: pointer;
	-o-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	-webkit-user-select: none;
	user-select: none;
	min-height: 35px;
	border-bottom: 2px solid #ebebeb;
	background-color: #ffffff;
	outline: none;
	font-family: helvetica, arial, sans-serif, -apple-system,
		BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen', 'Ubuntu',
		'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue', sans-serif;
	font-style: normal;
	font-weight: 500;
	font-size: 10px;
	color: #ababab;
	text-transform: uppercase;
	vertical-align: middle;
	text-align: center;
}

.ManageUsers-Tab.selected {
	padding-bottom: 7px;
	border-color: #f96332;
	border-width: 3px;
	text-decoration: none;
	color: #f96332;
}

.tab {
	list-style: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}
/* Float the list items side by side */
.tab div {
	float: left;
}
/* Style the links inside the list items */
.tab div {
	display: inline-block;
	color: #000;
	text-align: center;
	text-decoration: none;
	padding: 14px 16px;
	font-size: 17px;
	transition: 0.3s;
}
/* Style the tab content */
.tabcontent {
	display: none;
	background-color: white;
	padding: 6px 12px;
	color: black;
}

div.tab div.selected {
	background-color: white;
	color: black;
}

.tabcontent.selected {
	display: block;
}

/* th font-size */
thead.text-primary tr th {
	font-size: 17px;
}
</style>

</head>

<body class="">
	<div class="wrapper ">
		<!-- Sidebar -->
		<c:import url="../common/setting_sidebar.jsp" />

		<div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<c:import url="../common/setting_navbar.jsp" />
			<!-- End Navbar -->

			<div class="panel-header panel-header-sm"></div>
			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card" style="height: 570px;">
							<div class="card-header">
								<h4 class="card-title">사용자 관리</h4>
							</div>
							<div class="card-body">
								<div class="ManageUsers-TabBar tab">
									<div class="ManageUsers-Tab" data-tab="tab1">요청 </div>
									<div class="ManageUsers-Tab selected" data-tab="tab2">활성 사용자 </div>
									<div class="ManageUsers-Tab" data-tab="tab3">비활성화된 사용자</div>
								</div>

								<div id="tab1" class="tabcontent">
									<!-- <p>tab1 content</p> -->
									<div class="table-responsive">
										<table class="table table-striped">
											<thead class="text-primary">
												<tr>
													<th class="text-center">
														<!-- <div class="dropdown col-lg-6 ml-auto mr-auto"
															style="margin-left: 20px !important;">
															<button class="dropdown-toggle btn btn-primary btn-block"
																type="button" id="dropdownMenuButton"
																data-toggle="dropdown" aria-haspopup="true"
																aria-expanded="true" style="font-size: 13px;">작업</button>
															<div class="dropdown-menu"
																aria-labelledby="dropdownMenuButton"
																x-placement="bottom-start"
																style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(1px, 38px, 0px);">
																<a class="dropdown-item" href="#">모두 승인</a> 
																<a class="dropdown-item" href="#">모두 거부</a>
															</div>
														</div> -->
													</th>
													<th>사용자명</th>
													<th>이메일</th>
													<th class="text-right"></th>
													<th class="text-right"></th>
												</tr>
											</thead>
											<tbody>
												<form action="${ pageContext.request.contextPath }/member/approvalStatusY.do" method="post">
												<c:forEach items="${ memberApprovalStatusN }" var="mN">
												<tr>
													<td class="text-center">
														<div class="form-check" style="width: 55%;">
															<label class="form-check-label"> 
																<input class="form-check-input" type="checkbox"> 
																<span class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>${ mN.userName }</td>
													<td>${ mN.userId }</td>
													<td class="text-right">
														<input hidden type="text" value="${mN.mNo}" name="mNo">
													</td>
													<td class="text-right">
														<button class="btn btn-primary btn-block"
																type="submit" style="font-size: 13px;">승인</button>
													</td>
												</tr>
												</c:forEach>
												</form>
										</table>
									</div>
								</div>

								<div id="tab2" class="tabcontent selected">
									<!-- <p>tab2 content</p> -->
									<div class="table-responsive">
										<table class="table table-striped">
											<thead class="text-primary">
												<tr>
													<th class="text-center">
														<div class="dropdown col-lg-6 ml-auto mr-auto"
															style="margin-left: 20px !important;">
															<button class="dropdown-toggle btn btn-primary btn-block"
																type="button" id="dropdownMenuButton"
																data-toggle="dropdown" aria-haspopup="false"
																aria-expanded="true" style="font-size: 13px;">작업</button>
															<div class="dropdown-menu"
																aria-labelledby="dropdownMenuButton"
																x-placement="bottom-start"
																style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(1px, 38px, 0px);">
																<a class="dropdown-item" href="#">관리자 접근 권한 취소</a> <a
																	class="dropdown-item" href="#">관리자 만들기</a> <a
																	class="dropdown-item" href="#">사용자 비활성화</a>
															</div>
														</div>
													</th>
													<th>사용자명</th>
													<th class="text-center">이메일</th>
													<th class="text-center">관리자 여부</th>
													<th class="text-center">가입일</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${ memberApprovalStatusY }" var="mY">
												<tr>
													<td class="text-center">
														<div class="form-check" style="width: 55%;">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox"> <span
																class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>${ mY.userName }</td>
													<td class="text-center">${ mY.userId }</td>
													<td class="text-center">${ mY.admin }</td>
													<td class="text-center">${ mY.spaceEnrollDate }</td>
												</tr>
												</c:forEach>
										</table>
									</div>
								</div>

								<div id="tab3" class="tabcontent">
									<!-- <p>tab3 content</p> -->
									<div class="table-responsive">
										<table class="table table-striped">
											<thead class="text-primary">
												<tr>
													<th class="text-center">
														<div class="dropdown col-lg-6 ml-auto mr-auto"
															style="margin-left: 20px !important;">
															<button class="btn btn-primary btn-block" type="button"
																id="dropdownMenuButton" data-toggle="dropdown"
																aria-haspopup="true" aria-expanded="true"
																style="font-size: 13px;">활성화</button>
														</div>
													</th>
													<th>사용자명</th>
													<th>이메일</th>
													<th class="text-center">관리자 여부</th>
													<th class="text-right">가입일</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td class="text-center">
														<div class="form-check" style="width: 55%;">
															<label class="form-check-label"> <input
																class="form-check-input" type="checkbox"> <span
																class="form-check-sign"></span>
															</label>
														</div>
													</td>
													<td>Moleskine Agenda</td>
													<td>Office</td>
													<td class="text-center">25</td>
													<td class="text-right">€ 1,225</td>
												</tr>
										</table>
									</div>
								</div>

							</div>
						</div>
					</div>

					<script>
						$(function() {
							$('div.tab div').click(function() {
								var activeTab = $(this).attr('data-tab');
								$('div.tab div').removeClass('selected');
								$('.tabcontent').removeClass('selected');
								$(this).addClass('selected');
								$('#' + activeTab).addClass('selected');
							})
						});
					</script>

				</div>
			</div>
			<footer class="footer">
				<div class="container-fluid">
					<nav>
						<ul>
							<li><a href="https://www.creative-tim.com"> Creative Tim
							</a></li>
							<li><a href="http://presentation.creative-tim.com">
									About Us </a></li>
							<li><a href="http://blog.creative-tim.com"> Blog </a></li>
						</ul>
					</nav>
					<div class="copyright" id="copyright">
						&copy;
						<script>
							document.getElementById('copyright').appendChild(
									document.createTextNode(new Date()
											.getFullYear()))
						</script>
						, Designed by <a href="https://www.invisionapp.com"
							target="_blank">Invision</a>. Coded by <a
							href="https://www.creative-tim.com" target="_blank">Creative
							Tim</a>.
					</div>
				</div>
			</footer>
		</div>
	</div>
	<!--   Core JS Files   -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/core/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/core/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/core/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chart JS -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/now-ui-dashboard.min.js?v=1.3.0"
		type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/demo/demo.js"></script>
</body>

</html>