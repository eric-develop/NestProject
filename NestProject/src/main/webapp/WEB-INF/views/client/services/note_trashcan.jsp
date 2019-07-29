<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html lang="ko" style="height:100%;width:100%;overflow:hidden">
<head>


    <title>휴지통</title>

</head>
<body style="height:100%;width:100%;">
  <div style="height:100%;width:100%;">
       <c:import url="../common/navi.jsp"/>

<!------->


<div id="second_container" class="col-md-3 col-xs-2" value="slide">
        <div id="sc1">
            <h5 id="tr_text" style="display: block;">휴지통</h3>
            <div style="margin-top: 30px;">
                <p  id="trash_list">0개의 노트</p><!--리스트 갯수 노출-->
            <!--정렬-->
            <div class="dropdown" style="display:inline-block; margin-right: 10px;">
                    <button style=" margin-left:10px; width: 70px; height: 30px; padding: 0%;" class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      정렬
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                      <a class="dropdown-item" href="#">만든 날짜</a>
                      <a class="dropdown-item" href="#">수정한 날짜</a>
                      <a class="dropdown-item" href="#">삭제된 날짜</a>
                    </div>
             </div>

             <!---->
            </div>
        </div>
      <div>
            <!----삭제한 파일 리스트 -->
      </div>
      <div>
            <!----삭제한 파일 리스트 -->
      </div>

       
   


</div>
<!-----화면 확장 스크립트-->
<script>
    function sizeChange(){
          if(document.getElementById('second_container').classList.toggle('hide-element')){
            document.getElementById('second_container').style.display = 'none';
          } else {
            document.getElementById('second_container').style.display = 'block';
          }
          document.getElementById('box2').classList.toggle('col-md-7');
          document.getElementById('box2').classList.toggle('col-md-10');
    }
  </script>

<!--===========================노트 흰색=====================================================================-->
        <section id="box2" class="whitebox col-md-7 col-xs-9">
       
      <div id="top_line">

         
          <div style=" margin-top: 30px; display: inline-block;">
            <span id="sizeBtn" onclick="sizeChange();" style="cursor: pointer;"><i class="fas fa-expand"   style="font-size:20px; margin-right: 10px;"></i>화면
              크게</span>
            
  
          </div>
          <!-------드롭다운 -->
  

          <div style="
          width: 100px;
          float: right;    margin-top: 30px;">
              <ul style="list-style: none;  padding: 0%;position: fixed; 
              margin: 0%;">
                  <li class="menu">
                      <a style="height: 30px;
                      display: block;"><i class="fas fa-ellipsis-v" style="color: #9f9f9f;float: right"></i></a>
                      
                      <ul class="hide">
                          <li id="menuli">노트 복원</li>  
                          <li id="menuli">노트 출력</li> 
                         
                      </ul>
                    
                  </li>
           
                </div>
                </div>
           <!----드롭다운 스크립트-->
           <script>
              // html dom 이 다 로딩된 후 실행된다.
              $(document).ready(function(){
                  // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
                  $(".menu>a").click(function(){
                      var submenu = $(this).next("ul");
           
                      // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
                      if( submenu.is(":visible") ){
                          submenu.slideUp();
                      }else{
                          submenu.slideDown();
                      }
                  });
              });
          </script>
  
  
      
          
            <div id="note">

            </div>
          

<!---->
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
 $(document).ready(function(){  
   
  $(".topnav").hover(function() {                    //마우스를 topnav에 오버시
   $(this).parent().find(".subnav").slideDown('normal').show();                   //subnav가 내려옴.
   $(this).parent().hover(function() {  
   }, function(){  
    $(this).parent().find(".subnav").slideUp('fast');                 //subnav에서 마우스 벗어났을 시 원위치시킴  
   });  
  });  
   
 });  
</script>

<!---->





   
          
        
        </section>
      </div>
</body>
</html>