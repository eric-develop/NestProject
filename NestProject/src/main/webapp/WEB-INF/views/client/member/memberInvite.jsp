<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="${pageContext.request.contextPath }/resources/assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    Now UI Dashboard by Creative Tim
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport'
  />
  <!--     Fonts and icons     -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
    crossorigin="anonymous">
  <!-- CSS Files -->
  <link href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css" rel="stylesheet" />
  <link href="${pageContext.request.contextPath }/resources/assets/css/now-ui-dashboard.css?v=1.3.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="${pageContext.request.contextPath }/resources/assets/demo/demo.css" rel="stylesheet" />

	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>

<body class="user-profile">
  <div class="wrapper ">
    <!-- Sidebar -->
    <c:import url="../common/setting_sidebar.jsp"/>
    
    <div class="main-panel" id="main-panel">
      <!-- Navbar -->
      <c:import url="../common/setting_navbar.jsp"/>
      <!-- End Navbar -->
      <div class="panel-header panel-header-sm">
      </div>
      <div class="content">
        <div class="row">

          <div class="col-md-6">
            <div class="card ">
              <div class="card-header ">
                <h4 class="card-title">사용자 추가</h4>
              </div>
                <div class="card-header ">
                  <h6 class="card-title">팀원 추가</h6>
                  <c:if test="${ maximumMember ne 0 }">
                  <h7>개별적으로 팀원을 초대하려면 회원 아이디(이메일)을 입력하세요.</h7>
                  </c:if>
                  <c:if test="${ maximumMember eq 0 }">
                  <h7 style="color: red;">초대 가능한 회원권이 없습니다.</h7>
                  </c:if>
                </div>
                
                <form method="post" action="${pageContext.request.contextPath}/business/insertBusinessMember.do">
                <div class="form-group">
              <div class="card-body ">
                  <label>Email address</label>
                    <input type="email" class="form-control" id="userId" name="userId">
                    <label id="emailAvailableLabel" style="color:red; font-size:12px; display:none; margin-left:1px; margin-top: 10px;">회원에 등록되지 않은 이메일입니다.</label>
	                <label id="emailDupLabel" style="color:green; font-size:12px; display:none; margin-left:1px; margin-top: 10px;">초대 가능한 이메일입니다.</label>
	                <label id="emailValidLabel" style="color:red; font-size:12px; display:none; margin-left:1px; margin-top: 10px;">이메일 형식이 올바르지 않습니다.</label>
	                
	                <label id="invitationMemberY" style="color:red; font-size:12px; display:none; margin-left:1px; margin-top: 10px;">이미 비즈니스에 등록된 사용자입니다.</label>

              </div>
              <div class="card-footer ">
              	<c:if test="${ maximumMember ne 0 }">
                <button type="submit" id="btn-invite" class="btn btn-fill btn-primary" style="background:#e7722e">초대</button>
                </c:if>
              	<c:if test="${ maximumMember eq 0 }">
                <button disabled="true" type="submit" id="btn-invite" class="btn btn-fill btn-primary" style="background:#e7722e">초대</button>
                </c:if>
              </div>
              </div>
              </form>
              
            </div>
          </div>
          
          

        </div>
      </div>
      
      <script>
   // 이메일 유효성 체크 이벤트
		$("#userId").on("keyup",function(){
			var userId = $(this).val();
			var regEx = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
			 
			// 유효한 이메일 형식인지 판별
			if(regEx.test(userId) == false){
				$('#emailAvailableLabel').hide();
				$('#emailValidLabel').show();
				$('#emailDupLabel').hide();
				$('#invitationMemberY').hide();
				$('#btn-invite').attr('disabled', true);
				
			}else if(true){ // 중복 이메일인지 판별
				
					 $.ajax({
						url : "${pageContext.request.contextPath}/member/idDupCheck.do",
						data : {userId : userId},
						dataType : "json",
						success : function(data){
							if(data.isUsable == false){
								
								$.ajax({
									url : "${pageContext.request.contextPath}/member/invitationMemberY.do",
									data : {userId : userId},
									dataType : "json",
									success : function(data){
										if(data.result == true){
											$('#emailAvailableLabel').hide();
											$('#emailValidLabel').hide();
											$('#emailDupLabel').show();
											$('#invitationMemberY').hide();
											$('#btn-invite').attr('disabled', false);
											
										} else{
											$('#emailAvailableLabel').hide();
											$('#emailValidLabel').hide();
											$('#emailDupLabel').hide();
											$('#invitationMemberY').show();
											$('#btn-invite').attr('disabled', true);
										}
									},
									error : function(req,status,error){
										console.log("error");
									}
									 
								 }); 
								
								
							} else{
								$('#emailAvailableLabel').show();
								$('#emailValidLabel').hide();
								$('#emailDupLabel').hide();
								$('#invitationMemberY').hide();
								$('#btn-invite').attr('disabled', true);
								
							}
						},
						error : function(req,status,error){
							console.log("아이디 중복 체크 실패!");
							// 화면 에러 로그
							console.log(req);
							console.log(status);
							console.log(error);
						}
						 
					 }); // ajax끝
					 
					 
			
			 }
			

		});
          </script>
      
      <footer class="footer">
        <div class="container-fluid">
          <nav>
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="http://presentation.creative-tim.com">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright" id="copyright">
            &copy;
            <script>
              document.getElementById('copyright').appendChild(document.createTextNode(new Date().getFullYear()))
            </script>, Designed by
            <a href="https://www.invisionapp.com" target="_blank">Invision</a>. Coded by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a>.
          </div>
        </div>
      </footer>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="${pageContext.request.contextPath }/resources/assets/js/core/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/assets/js/core/popper.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/assets/js/core/bootstrap.min.js"></script>
  <script src="${pageContext.request.contextPath }/resources/assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chart JS -->
  <script src="${pageContext.request.contextPath }/resources/assets/js/plugins/chartjs.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="${pageContext.request.contextPath }/resources/assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="${pageContext.request.contextPath }/resources/assets/js/now-ui-dashboard.min.js?v=1.3.0" type="text/javascript"></script>
  <!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
  <script src="${pageContext.request.contextPath }/resources/assets/demo/demo.js"></script>
</body>

</html>