<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <title>Document</title>
</head>
<body>
 
    <div class="container">
        <div id="loginlogo">
            <img src="${pageContext.request.contextPath}/resources/images/nest_logo.png" style="width: 220px;">
        </div>
        <div id="loginbox">

            <h3 style="font-size: 24px; padding-top: 100px;">로그인</h3>
            <div id="inputbox">
            <input id="idbox" type="email" placeholder="아이디를 입력해주세요."><br>
            <input id="pwdbox" type="password" placeholder="비밀번호를 입력해주세요."><br>
            <div style="width: 300px; margin: 0 auto; border-radius: 30px;">
                <button style="width: 100%;" type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/member/memberLogin.do'">로그인</button>
            </div>
            <div style="margin: 20px 20px;">
	            <input style="margin-left: 40px;" type="checkbox" name="check" value="keeplogin"><span  style="margin-right: 20px; margin-left: 5px;">로그인 상태유지</span>
	            <input type="checkbox" name="check" value="remembermail"><span style="margin-left: 5px;">이메일 기억하기</span>
           </div>
            </div>

            <div style="width: 300px; margin: 0 auto; border-radius: 30px; margin-bottom: 10px;">
            <button  style="width: 100%; border-radius: 0.5rem; border: none; 
                background: #F28B30; color: #fff; "  type="button" class="btn btn-success">
            kakao 간편 로그인</button><br>
            </div>
            <div style="width:300px; margin: 0 auto; border-radius: 30px;">

     <!----if click this btn open modal---->       

<a id="openBtn" style="width: 100%; border: none; border-radius: 0.5rem; background: #F28B30; 
    color: #fff;" data-toggle="modal" href="#myModal" class="btn btn-primary">가입하기</a>
<!-------modal-------->

</div>
<a href="#" style="text-align: center; text-decoration:none; color: #454545;"><p style="width: 200px; margin:0 auto; font-size: 12px; margin-top: 30px">비밀번호가 생각나지 않으시나요?</p></a>

</div>



       
       
    </div>
<script>
   $(document).ready(function() {

  $('#openBtn').click(function() {
    $('#myModal').modal({
      show: true
    })
  });

  $(document).on({
    'show.bs.modal': function() {
      var zIndex = 1040 + (10 * $('.modal:visible').length);
      $(this).css('z-index', zIndex);
      setTimeout(function() {
        $('.modal-backdrop').not('.modal-stack').css('z-index', zIndex - 1).addClass('modal-stack');
      }, 0);
    },
    'hidden.bs.modal': function() {
      if ($('.modal:visible').length > 0) {
        // restore the modal-open class to the body element, so that scrolling works
        // properly after de-stacking a modal.
        setTimeout(function() {
           $(document.body).addClass('modal-open');
         }, 0);
      }
    }
  }, '.modal');
});
</script>
<!--======================================================================-->
<!-- modal test : 이게 원본 코드입니다. 이 부분을 참고해서 고쳐 보세요. -->




<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content" style="width: 900px;">
      <div class="modal-header">
          <h4 class="modal-title">회원가입</h4>
        <button id="modalclose" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
      </div>


      <div class="container" ></div>
      <div class="modal-body" style="padding-top: 80px;">
        	<form method="post" action="memberInsert.do">
        	<div style="width: 400px; display: inline-block; height: 100%;">

        	
              <div class="input-group mb-3">
                   <div class="input-group mb-3" style="magin-top:10px;">
		                <input type="email" name="userId" class="btn btn-outline-secondary" placeholder="아이디" aria-label="Recipient's username" aria-describedby="button-addon2" style="border-bottom-right-radius: 0%; border-top-right-radius: 0% ;width: 250px;;">
		                 <div class="input-group-append">
                  	 	 <button class="btn btn-outline-secondary" type="button" id="button-addon2">인증번호 전송</button>
                 		 </div>
		                
	              </div>
			      <div style="margin-bottom: 10px;">
				            <input type="text" class="btn btn-outline-secondary" placeholder="인증번호를 입력해주세요." aria-label="Recipient's username" aria-describedby="button-addon2" style=" width: 269px;">
				            <button type="button"  style="height: 36px; width: 60px; border-radius: 0.5rem; border-top-right-radius: 0%; border-bottom-right-radius: 0%; border: none; 
					         background: #F28B30; color: #fff; "  type="button" >
					            확인</button>
					            <button type="button"  style=" height: 36px; border-radius: 0.5rem;  border-top-left-radius: 0%; border-bottom-left-radius: 0%; border: none; 
					                border: #F28B30 1px solid ; background: #fff; color: #454545; "  type="button">
					            재전송</button>
        		  </div>
	              
	              
                   <input type="password" name="password" placeholder="비밀번호를 입력해주세요."  class="btn btn-outline-secondary" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1" style="margin-bottom: 10px; width: 100%;">
                </div>
       	
        
        
      


<!-----아이디 닉네임 input/중복확인-->
           
             <div class="input-group mb-3"style="margin-top:10pz;">
                  <input type="text" name="userName" class="btn btn-outline-secondary" placeholder="이름" aria-label="Recipient's username" aria-describedby="button-addon2" style="border-bottom-right-radius: 0%; border-top-right-radius: 0% ; width: 311px;">
                 
                </div>
           
           
              <div class="input-group mb-3"style="margin-top:10pz;">
                  <input type="text" name="nickName" class="btn btn-outline-secondary" placeholder="닉네임" aria-label="Recipient's username" aria-describedby="button-addon2" style="border-bottom-right-radius: 0%; border-top-right-radius: 0% ; width: 311px;">
                 
                </div>
                
              <div class="input-group mb-3"style="margin-top:10pz;">
                  <input type="text" name="phone1" class="btn btn-outline-secondary"  aria-label="Recipient's username" aria-describedby="button-addon2" style="border-bottom-right-radius: 0%; border-top-right-radius: 0% ; width: 100px;">&nbsp; - &nbsp;
               		<input type="text" name="phone2" class="btn btn-outline-secondary"  aria-label="Recipient's username" aria-describedby="button-addon2" style="border-bottom-right-radius: 0%; border-top-right-radius: 0% ; width: 100px;">&nbsp; - &nbsp;
               		<input type="text" name="phone3"class="btn btn-outline-secondary"  aria-label="Recipient's username" aria-describedby="button-addon2" style="border-bottom-right-radius: 0%; border-top-right-radius: 0% ; width: 100px;">
               </div>
                
                
        
      </div>


      <!---오른쪽 설문 -->
        <div style="padding: 20px; width: 400px; float: right; border-left: solid 1px #424242">
            <p id="age" style="margin:0%;"> 연령을 선택 해 주세요. </p>
            <select name="ageGroup" style="width: 200px; margin-bottom: 10px;">
        
              <option value="10대">10대</option>
              <option value="20대">20대</option>
              <option value="30대">30대
              <option value="40대">40대</option>
              <option value="50대">50대</option>
              <option value="60대">60대</option>
            </select>
          
          
           <p id="age" style="margin:0%;"> 사용목적 </p>
            <select name="purpose" style="width: 200px; margin-bottom: 10px;">
             
              <option value="개인적 사용">개인적 사용</option>
              <option value="2">학업 프로젝트</option>
              <option value="3">업무용 </option>
            </select>
         
             <p id="age" style="margin:0%;"> 업무 분야 </p>
            <select name="jobField" style="width: 200px;">
             
              <option value="IT">IT</option>
              <option value="2">디자인</option>
              <option value="3">교육</option>
              <option value="4">사업</option>
              <option value="5">경영</option>
              <option value="6">전산</option>
            </select>
            <br>
            <br><br>
            <input id="joincheck" type="checkbox" disabled value="agree" >개인정보 이용 약관동의
            
            <div style="display: inline-block; margin-bottom: 10px;">
                <a style=" height: 32px; border: none; background: rgb(143, 143, 143); width: 100px" data-toggle="modal" href="#myModal1" class="btn btn-primary">약관 보기</a>
            </div>
            <br>

            <input id="joincheck2" type="checkbox" disabled value="agree" >네스트 서비스 약관동의
            <div style="    display: inline-block;">
                <a style="  height: 32px; border: none; background: rgb(143, 143, 143); width: 100px" data-toggle="modal" href="#myModal2" class="btn btn-primary">약관 보기</a>
            </div>
                </div>
                 <div class="modal-footer" style="width: 100%;" > <a style="width: 50%; background: silver" href="#" data-dismiss="modal" class="btn">취소</a>
		          
		         <input type="submit" value="확인"  class="btn btn-primary" style="width: 50%; background:#F28B30; border: none;"/>
		        </div>
      
                
      		</form>
      		
        </div>
        
       
      </div>



      <div class="modal-footer"> <a href="#" data-dismiss="modal" class="btn">Close</a>
        <a href="#" class="btn btn-primary">Save changes</a>

      </div>
    </div>
    
  </div>






<!--------약관 모달 --------->

<script>
  function agree(){
    $('#joincheck').prop('checked', true);
    $('#closeModaljoincheck').click();
   
  }
  function agree2(){
    $('#joincheck2').prop('checked', true);
    $('#closeModaljoincheck2').click();
   
  }
  function close1(){
   
    $('#modalclose').click();

  }
</script>
<div class="modal fade rotate" id="myModal1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
       <h4 class="modal-title">개인정보 이용 약관동의서</h4>
        <button id="closeModaljoincheck" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        

      </div>
      <div class="container"></div>
      <div class="modal-body">
        <div style="overflow-y:scroll; width:100%; height: 400px; padding:10px;">
            1. 수집하는 개인정보
            이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
            <br><br>
            회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
            - 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.
            - 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.
            서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
            NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
            <br><br>
            서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다.
            구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나, 
            2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.
            네이버 위치기반서비스 이용 시 수집·저장되는 위치정보의 이용 등에 대한 자세한 사항은 ‘네이버 위치정보 이용약관’에서 규정하고 있습니다.
            <br>
            <br>
            <br>
            2. 수집한 개인정보의 이용
            네이버 및 네이버 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.
            <br><br>
            - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
            - 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
            - 법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
            - 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
            - 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
            - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
            - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.
            <br><br><br>
            3. 개인정보의 파기
            회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
            단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.
            <br><br>
            이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우는 아래와 같습니다.
            부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰 번호(만 14세 미만 회원의 경우 법정대리인 DI)가 있습니다.
            결제도용, 불법할인대출(일명 '카드깡') 등 관련 법령 및 이용약관을 위반하는 네이버페이의 부정거래기록(아이디, 이름, 휴대전화번호, 배송지 주소, IP주소, 쿠키, 기기정보)은 부정거래 방지 및 다른 선량한 이용자의 보호, 안전한 거래 환경 보장을 위하여 수집 시점으로부터 3년간 보관하고 파기합니다.
            부정이용으로 징계를 받기 전에 회원 가입 및 탈퇴를 반복하며 서비스를 부정 이용하는 사례를 막기 위해 탈퇴한 이용자의 휴대전화번호를 복호화가 불가능한 일방향 암호화(해시 처리)하여 6개월간 보관합니다. QR코드 서비스에서 연락처를 등록한 이후 QR코드 삭제 시, 복구 요청 대응을 위해 삭제 시점으로 부터 6개월 보관합니다. 스마트 플레이스 서비스에서 휴대전화번호를 등록한 경우 분쟁 조정 및 고객문의 등을 목적으로 업체 등록/수정 요청시, 또는 등록 이후 업체 삭제 요청 시로부터 최대 1년간 보관 할 수 있습니다.
            <br><br>
            전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. 네이버는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
            - 전자상거래 등에서 소비자 보호에 관한 법률 
            계약 또는 청약철회 등에 관한 기록: 5년 보관 
            대금결제 및 재화 등의 공급에 관한 기록: 5년 보관 
            소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
            - 전자금융거래법 
            전자금융에 관한 기록: 5년 보관
            - 통신비밀보호법 
            로그인 기록: 3개월
            회원탈퇴, 서비스 종료, 이용자에게 동의받은 개인정보 보유기간의 도래와 같이 개인정보의 수집 및 이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다. 법령에서 보존의무를 부과한 정보에 대해서도 해당 기간 경과 후 지체없이 재생이 불가능한 방법으로 파기합니다. 전자적 파일 형태의 경우 복구 및 재생이 되지 않도록 기술적인 방법을 이용하여 안전하게 삭제하며, 출력물 등은 분쇄하거나 소각하는 방식 등으로 파기합니다.
            참고로 네이버는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다. 단, 네이버페이의 간편결제수단은 분리 보관하지 않고, 삭제합니다.
        </div>

       
      </div>
      <div class="modal-footer" style="width: 100%;"> 
          <a href="#" data-dismiss="modal" class="btn" style="width: 50%; border:solid 1px #636363;" >비동의</a>
          <a href="#" onclick="agree();" value="agreetext1" class="btn btn-primary" style="width: 50%;">동의</a>
  
        </div>
    </div>
  </div>
</div>



<!-------약관 모달 2-->
<div class="modal fade rotate" id="myModal2">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
            <h class="modal-title">네스트 서비스 약관동의서</h4>
          <button  id="closeModaljoincheck2" type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
          
  
        </div>
        <div class="container"></div>
        <div class="modal-body">
            <div style="overflow-y:scroll; width:100%; height: 400px; padding:10px;">
                1. 수집하는 개인정보
                이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.
                <br><br>
                회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
                - 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 가입인증 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 성별, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소를 수집합니다.
                - 단체아이디로 회원가입 시 단체아이디, 비밀번호, 단체이름, 이메일주소, 가입인증 휴대전화번호를 필수항목으로 수집합니다. 그리고 단체 대표자명을 선택항목으로 수집합니다.
                서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
                NAVER 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
                <br><br>
                서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다.
                구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나, 
                2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.
                네이버 위치기반서비스 이용 시 수집·저장되는 위치정보의 이용 등에 대한 자세한 사항은 ‘네이버 위치정보 이용약관’에서 규정하고 있습니다.
                <br><br><br>
                2. 수집한 개인정보의 이용
                네이버 및 네이버 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.
                <br><br>
                - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
                - 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
                - 법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
                - 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
                - 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
                - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
                - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.
                <br><br><br>
                3. 개인정보의 파기
                회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
                단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.
                <br><br>
                이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우는 아래와 같습니다.
                부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰 번호(만 14세 미만 회원의 경우 법정대리인 DI)가 있습니다.
                결제도용, 불법할인대출(일명 '카드깡') 등 관련 법령 및 이용약관을 위반하는 네이버페이의 부정거래기록(아이디, 이름, 휴대전화번호, 배송지 주소, IP주소, 쿠키, 기기정보)은 부정거래 방지 및 다른 선량한 이용자의 보호, 안전한 거래 환경 보장을 위하여 수집 시점으로부터 3년간 보관하고 파기합니다.
                부정이용으로 징계를 받기 전에 회원 가입 및 탈퇴를 반복하며 서비스를 부정 이용하는 사례를 막기 위해 탈퇴한 이용자의 휴대전화번호를 복호화가 불가능한 일방향 암호화(해시 처리)하여 6개월간 보관합니다. QR코드 서비스에서 연락처를 등록한 이후 QR코드 삭제 시, 복구 요청 대응을 위해 삭제 시점으로 부터 6개월 보관합니다. 스마트 플레이스 서비스에서 휴대전화번호를 등록한 경우 분쟁 조정 및 고객문의 등을 목적으로 업체 등록/수정 요청시, 또는 등록 이후 업체 삭제 요청 시로부터 최대 1년간 보관 할 수 있습니다.
                <br><br>
                전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. 네이버는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
                - 전자상거래 등에서 소비자 보호에 관한 법률 
                계약 또는 청약철회 등에 관한 기록: 5년 보관 
                대금결제 및 재화 등의 공급에 관한 기록: 5년 보관 
                소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
                - 전자금융거래법 
                전자금융에 관한 기록: 5년 보관
                - 통신비밀보호법 
                로그인 기록: 3개월
                회원탈퇴, 서비스 종료, 이용자에게 동의받은 개인정보 보유기간의 도래와 같이 개인정보의 수집 및 이용목적이 달성된 개인정보는 재생이 불가능한 방법으로 파기하고 있습니다. 법령에서 보존의무를 부과한 정보에 대해서도 해당 기간 경과 후 지체없이 재생이 불가능한 방법으로 파기합니다. 전자적 파일 형태의 경우 복구 및 재생이 되지 않도록 기술적인 방법을 이용하여 안전하게 삭제하며, 출력물 등은 분쇄하거나 소각하는 방식 등으로 파기합니다.
                참고로 네이버는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다. 단, 네이버페이의 간편결제수단은 분리 보관하지 않고, 삭제합니다.
            </div>
        </div>
        <div class="modal-footer" style="width: 100%;"> 
          <a href="#" data-dismiss="modal" class="btn" style="width: 50%; border:solid 1px #636363;" >비동의</a>
          <a href="#" onclick="agree2();" class="btn btn-primary" style="width: 50%;">동의</a>
  
        </div>
      </div>
    </div>
  </div>



</body>
</html>