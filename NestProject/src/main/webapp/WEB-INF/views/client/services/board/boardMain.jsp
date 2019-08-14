<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
<!DOCTYPE html>
<html lang="ko">


<link
	href="${pageContext.request.contextPath}/resources/css/rotating-card.css"
	rel="stylesheet" />
<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"
	rel="stylesheet" />
<style>
	#community_text_div{
		display:inline-block;
	}
	
	.selector img{
		position: absolute; top:0; left: 0;
		width: 100%;
		height: 100%;
	}
</style>




<body style="height:100%;width:100%;">
  <div style="height:100%;width:100%;">

	<!-- Page Wrapper -->
	<div id="wrapper" style="background-color: #f6c23e">

		<c:import url="../board/common/menubar.jsp" />

		<!-- Home 화면 구현부분 ////////////////////////////////////////////////////////////////////////////////////////////////////-->
			<div class="space-50" style="height:150px;text-align: center;"><img src="/nest/resources/images/comlogg.png" 
              style="width:500px;height:130px; "></div>
         <div class="row" style="height: 600px;">  
         
            
            <div class="col-lg-12 col-md-12 col-xs-12" style="text-align:center">
               <div id="community_text_div" class="col-lg-3 col-md-6 col-xs-6">
						<div class="card-container">
							<div class="card">
								<div class="front">
									<div class="cover">
										<img src="/nest/resources/images/rotating_card_thumb.png" />
									</div>
									<div class="user">
										<img class="img-circle"
											src="/nest/resources/images/rotating_card_profile.png" />
									</div>
									<div class="content">
										<div class="main">
											<h3 class="name">곽준서</h3>
											<p class="profession">Duck</p>
											<p class="text-center">"은서야 나가" <br> "대현아 손절하자" <br> "열심히 하세요 화이팅!" </p>
										</div>
										
									</div>
								</div>
								
								<!-- end front panel -->
								<div class="back">
									<div class="header">
										<h5 class="motto">"Our team is best!! "</h5>
									</div>
									<div class="content">
										<div class="main">
											<h4 class="text-center">인기글</h4>
											<p class="text-center">Web design, Adobe Photoshop,
												HTML5, CSS3, Corel and many others...</p>

											<div class="stats-container">
												<div class="stats">
													<h4>2</h4>
													<p>게시글 수</p>
												</div>
												<div class="stats">
													<h4>1</h4>
													<p>댓글등록 수</p>
												</div>
												<div class="stats">
													<h4>비트코인</h4>
													<p>주로 활동하는<br>카테고리</p>
												</div>
											</div>

										</div>
									</div>
									
								</div>
								<!-- end back panel -->
							</div>
							<!-- end card -->
						</div>
						<!-- end card-container -->
					</div>
					<!-- end col sm 3 -->
					
					<div id="community_text_div" class="col-lg-3 col-md-6 col-xs-6">
						<div class="card-container">
							<div class="card">
								<div class="front">
									<div class="cover">
										<img src="/nest/resources/images/rotating_card_thumb2.png" />
									</div>
									<div class="user">
										<img class="img-circle"
											src="/nest/resources/images/rotating_card_profile2.png" />
									</div>
									<div class="content">
										<div class="main">
											<h3 class="name">안은서</h3>
											<p class="profession">Rosy</p>
											<p class="text-center">"대현아 화풀어" <br> "은서야 밤길조심해" <br>
																	"대현아 다리떨지마"</p>
										</div>
										
									</div>
								</div>
								
								<!-- end front panel -->
								<div class="back">
									<div class="header">
										<h5 class="motto">"술을 잘먹자"</h5>
									</div>
									<div class="content">
										<div class="main">
											<h4 class="text-center">인기글</h4>
											<p class="text-center">Web design, Adobe Photoshop,
												HTML5, CSS3, Corel and many others...</p>

											<div class="stats-container">
												<div class="stats">
													<h4>5</h4>
													<p>게시글 수</p>
												</div>
												<div class="stats">
													<h4>3</h4>
													<p>댓글등록 수</p>
												</div>
												<div class="stats">
													<h4>연예</h4>
													<p>주로 활동하는<br>카테고리</p>
												</div>
											</div>

										</div>
									</div>
									
								</div>
								<!-- end back panel -->
							</div>
							<!-- end card -->
						</div>
						<!-- end card-container -->
					</div>
					
					<!--         <3번째 ></div> -->
					<div id="community_text_div" class="col-lg-3 col-md-6 col-xs-6">
						<div class="card-container">
							<div class="card">
								<div class="front">
									<div class="cover">
										<img src="/nest/resources/images/rotating_card_thumb3.png" />
									</div>
									<div class="user">
										<img class="img-circle" src="/nest/resources/images/rotating_card_profile3.png" />
									</div>
									<div class="content">
										<div class="main">
											<h3 class="name">유정훈</h3>
											<p class="profession">Daniel</p>

											<p class="text-center">"여러분은 어디에서도 들을 수 없는 강의를 듣고 있어요."<br>"늦게 오지말고 일찍일찍 다녀요. " 
												<br> "으하하핫~!! 이거 내가 만든거에요~" </p>
										</div>
									</div>
								</div>
								<!-- end front panel -->
								<div class="back">
									<div class="header">
										<h5 class="motto">"포기하지 마세요~!!"</h5>
									</div>
									<div class="content">
										<div class="main">
											<h4 class="text-center">인기 글</h4>
											<p class="text-center">저는 여러분들 중 그 누구도 낙오된 사람없이 <br>함께 가길 희망해요~!! <br>저와 함께 합시다.</p>

											<div class="stats-container">
												<div class="stats">
													<h4>4</h4>
													<p>게시글 수</p>
												</div>
												<div class="stats">
													<h4>7</h4>
													<p>댓글등록 수</p>
												</div>
												<div class="stats">
													<h4>교육</h4>
													<p>주로 활동하는<br>카테고리</p>
												</div>
											</div>

										</div>
									</div>
								</div>
								<!-- end back panel -->
							</div>
							<!-- end card -->
						</div>
						<!-- end card-container -->
					</div>
					<!-- end col-sm-3 -->
				</div>
				<!-- end col-sm-10 -->
			</div>
			<!-- end row -->
			
			<!-- <div class="space-200"></div> -->
		




		<c:import url="../board/common/footer.jsp" />
	</div>
	<!-- End of Content Wrapper -->

	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
</div>
</body>

</html>
