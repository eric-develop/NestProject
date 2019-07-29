<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<head>
 
      <meta charset="UTF-8">
    <script src="https://kit.fontawesome.com/df37f96d20.js"></script>
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.0.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
      integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
      crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
      integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
      crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
</head>

    <div id="left_navi" style="padding:0%;" class="col-md-2 col-xs-1">

        <div id="usericon">
          <i class="far fa-user-circle" style="font-size: 50px; color: #b8b8b8"></i>
  
  
  
          <span style="font-size: 16px; color:#fff;">user </span>
  
  
  
  
          
        </div>
        <div id="logoutdiv">
  
            <p style="color : #fff; margin-top: 10px; ">user님 안녕하세요.</p>
            <button type="button" class="btn-sm" style="width: 100%; border: none;">로그아웃</button>
          </div>
        <div id="noticenav">
          <ul id="navul">
            <li id="newnote"> &nbsp;&nbsp;<i class="fas fa-plus-circle"
                style="font-size: 20px; color: #fff; margin-right: 10px;"> </i>새노트</li>
            <li id="navli">&nbsp;&nbsp;<i id="navli_icon" class="fas fa-sticky-note"></i>모든 노트</li>
            <li id="navli">&nbsp;&nbsp;<i id="navli_icon" class="far fa-sticky-note"></i>노트북</li>
            <li id="navli">&nbsp;&nbsp;<i id="navli_icon" class="fas fa-folder"></i>공유 문서함</li>
            <li id="navli">&nbsp;&nbsp;<i id="navli_icon" class="fas fa-tags"></i>태그</li>
            <li id="navli">&nbsp;&nbsp;<i id="navli_icon" class="fas fa-trash-alt"></i>휴지통</li>
            <li id="navli">&nbsp;&nbsp;<i id="navli_icon" class="fas fa-caret-up"></i>업그레이드</li>
            <!---새창 오픈-->
           <!--  <a href="community.html" target="_blank" style="list-style:none; text-decoration: none; color: #fff;"> -->
              <li id="navli">&nbsp;&nbsp;<i  id="navli_icon" class="fas fa-comment"></i>커뮤니티</li>
            </a>
  
  
  
  
          </ul>
          <ul id="navul" style= "margin-top:210px;">
              <li id="help">&nbsp;&nbsp;<i id="navli_icon" class="fas fa-cog"></i>설정</li>
              <li id="help">&nbsp;&nbsp;<i id="navli_icon" class="far fa-question-circle"></i>고객센터</li>
            </ul>
        </div>
  
      </div>
   

  

    