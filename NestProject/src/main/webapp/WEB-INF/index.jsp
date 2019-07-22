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
    <header>
        
  
            <div id="login">
                 <div id="logo" style="width: 200px; float: left; padding-top: 10px;">
                <img src="${pageContext.request.contextPath}/resources/images/nest_wlogo.png"></div>
        <div id="toploginbtn"><button style="width: 100px;" type="button" class="btn btn-light">login</button>
        </div>
     </div>
    </header>

   

    <div id="main1box">
       
        </div>
        <div style="width: 1200px; margin: 0 auto; height: 900px;">
        <div id="intro1" >
            
                <h3>"더 빠르게, 더 편하게 "</h3><br>
                <p>언제 어디서나 노트를 작성할 수 있습니다.<br>
                    편리한 사용으로 사람들과 아이디어를 빠르게 공유하고<br>
                    피드백 확인까지 개인과 팀워크를 고려한 서비스입니다. </p>




            <div id="introJOin">
                    <button style="width: 150px;" type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/member/memberEnroll.do'">간편 가입하기 > </button>
            </div>
            <div id="introLogin">
                    <button style="width: 150px;" type="button" class="btn btn-secondary" onclick="location.href='${pageContext.request.contextPath}/member/loginView.do'" >로그인</button>
            </div>
        </div>

        </div>
    
        
        <div style="width: 1200px; margin: 0 auto;     height: 800px;
    padding-top: 100px;">
               <div id="intro2">
        </div>
     
                <div id="main2box">
            <h3>그룹웨어</h3>
            <p>팀워크를 위한 스페이스를 만들어보세요.
            <br> 팀원을 초대하고 서로의 노트를 공유할 수 있습니다.<br>
                빠른 회신과 파일공유로 업무 효율을 높여보세요.    
            </p>
    </div>
    </div>




    <div style="margin: 0 auto; width: 1200px; height: 700px;
    padding-top: 100px;">
    
        
                <div id="main3box">
            <h3>채팅으로 소통이 가능합니다.</h3>
            <p>
                친구, 그룹으로 나누어 원활한 소통이 가능합니다.
                <br> NEST의 채팅 서비스로 프라이버시를 보호 받고,<br>
                팀원들과 소통해보세요.
            </p>
    
    </div>
    <div id="intro3">
    </div>
</div>

<div style="margin: 0 auto; width: 1200px; height: 1000px; ">
    <div >
    <div id="mainbox4">
    </div>
     
            <div id="main4text">
                <h3>화면 공유를 지원합니다.</h3>
                <p>우리 NEST는 사용자에 어려움을 해결하기 위해 노력하였습니다. <br>
                    화면 공유 기능으로 지금 해결 하기 어려운 문제나 일들을 팀원에게<br>

                    혹은 친구에게 요청과 도움을 줄 수 있습니다.
                </p>
         

        </div>
     
    </div>
    </div>


    <div id="mainlastdiv">

        <h4 style="text-align: center;">나만의 프라이빗 오피스를 경험 할 수 있습니다.</h4>
        <ul style="width: 800px; margin: 0 auto; text-align: center; padding: 0%;">
            <li id="mainlastone"><div class="rounded-circle" >
                <b><p id="mtitle" style="padding-top: 50px;  text-align: center">NOTE</p></b>
                </div>
            </li>

            <li id="mainlastone">
                <div class="rounded-circle" >
                <b> <p id="mtitle" style="color: #fff; padding-top: 50px; text-align: center">SHARE</p></b>
            </div>
            </li>
            <li id="mainlastone">
                <div class="rounded-circle">
                <p id="mtitle" style="padding-top: 50px;  text-align: center"> <b>MESSAGE</b></p>
            </div></li>
            <li id="mainlastone">
                <div class="rounded-circle">
                <b> <p id="mtitle" style="padding-top: 50px;  text-align: center">SCREEN</p>
            </div>
            </li>


        </ul>
        <ul id="mainlastul">
            <li id="mainlastli">
                <p id="mlip" style="text-align: center;">나만의 노트와 우리들만의 <br>
                노트를 만들어 보세요
            </p>
            </li>
            <li id="mainlastli">
                <p id="mlip" style="text-align: center;">네스트만 있다면 더 빠르게  <br>
                일정을 공유하고 파일을 <br>업로드 할 수 있습니다.
            </p>
            </li>
            <li id="mainlastli">
                <p id="mlip" style="text-align: center;">프로젝트를 진행 할 때<br>
                    가장 중요한 소통이 가능합니다.
                
            </p>
            </li>
            <li id="mainlastli">
                <p id="mlip" style="text-align: center;">화면을 공유하고 제어가 <br>
                가능 합니다. 어려운 상황을 <br>
                팀원의 도움으로 대처 하세요.
            </p>
            </li>
        </ul>
        
    </div>
    <div style="background: #F28B30; width: 100%; height: 300px;">

        <div style="width: 200px; margin: 0 auto; padding-top: 130px;">
           <button type="button" class="btn btn-light" style="color: #454545; width: 260px; height: 50px;" onclick="location.href='${pageContext.request.contextPath}/member/loginView.do'"> 바로 시작하기 </button>
        </div>
        <!-- ${pageContext.request.contextPath}/ -->
</body>

</html>