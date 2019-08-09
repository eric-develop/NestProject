
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
<!DOCTYPE html>
<html lang="ko" style="height:100%;width:100%;">
<head>
<c:import url="../../common/head.jsp">
	<c:param name="titleName" value="휴지통" />
</c:import>

<style>


@media ( min-width : 1200px) {
	
.second_container{
    box-sizing: border-box;
    direction: ltr;
    height:100%;
    position: relative;
    width: 20%;
    will-change: transform;
    
    background: #f5f5f5;
    display: block;
    float: left;
    padding: 0%;

}.whitebox2{
	width: 100%;
	display: inline-block;
	overflow:auto;
	height: 90%;
}.whitebox2_wide{
	width: 85%;
	display: inline-block;
}#note{
height:auto;
padding:20px;
width:100%;


}
#whitebox_footer{
bottom: 0; 
position: fixed;
display: inline-block;
height: 50px;
border-top: #d1d1d1 1px solid;
width: 65%;
background: #fff;
}.body_div{
height: 100%;
width:65%;
display: inline-block;
float: left;
}
.body_div2{
height: 100%;
width:85%;
display: inline-block;
float: left;
}
}
	
	
@media ( min-width : 300px) and (max-width: 1199.98px)  {
	
.second_container{
    box-sizing: border-box;
    direction: ltr;
    height:100%;
    position: relative;
    width: 20%;
    will-change: transform;
    
    background: #f5f5f5;
    display: inline-block;
    float: left;
    padding: 0%;

}.whitebox2{
	width:100%;
	height: 90%;
	display: inline-block;
}.whitebox2_wide{
	width: 100%;
	display: inline-block;
}
#whitebox_footer{
bottom: 0; 
position: fixed;
display: inline-block;
height: 50px;
border-top: #d1d1d1 1px solid;
width: 100%;
background: #fff;
}#note{
	width:100%;
	height: 100%;
	
	display: inline-block;
}.body_div{
height: 100%;
width:85%;
display: inline-block;
float: left;
}
.body_div2{
height: 100%;
width:100%;
display: inline-block;
float: left;
}
}
</style>
    

</head>


<body style="height:100%; width:100%;">
  
  
   <c:import url="../../common/navi.jsp"/>


    <!--=======================================노트 목록=========================================================-->


    <div class="second_container" value="slide" style="display: inline-block;">
<div id="sc1">
            <h5 id="tr_text" style="display: block;">휴지통</h5>
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
    </div>





    <!--===========================노트 흰색=====================================================================-->
    <div id="box2" class="body_div">
   
 <div id="top_line">

         
          <div style=" margin-top: 30px; display: inline-block;">
            <span style="padding-left:20px;" id="sizeBtn" onclick="sizeChange();" style="cursor: pointer;"><i class="fas fa-expand"  style="font-size:20px; margin-right: 10px;"></i>화면
            크게</span>
            
  
          </div>
    
  

          <div style="
          width: 100px;
          float: right; ">
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
                  </ul>
           
                </div>
                </div>
    
    <section class="whitebox2">

      




      <!------------------------------------------------------------------------------------------------------------------------------------------>
      

      

    </section>
    </div>


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



  <script>
    function sizeChange(){
          if(document.querySelector('.second_container').classList.toggle('hide-element')){
            document.querySelector('.second_container').style.display = 'none';
          } else {
            document.querySelector('.second_container').style.display = 'block';
          }
          document.getElementById('box2').classList.toggle('body_div');
          document.getElementById('box2').classList.toggle('body_div2');
    }
  </script>


<script type="text/javascript">
//최초 실행시 
$(function(){
	if(parseInt($('body').css('width')) >= 1200){
		console.log("길이가 길 때");
	   $('.second_container').css('height', $('.body_div').css('height'));
	   $('.left_navi').css('height', $('.body_div').css('height'));
	} else {
		console.log("길이가 짧을 때");
		$('.left_navi').css('height',  '70px');
		$('.second_container').css('height', $('.body_div').css('height'));
	}
});

// 화면 사이즈 변경시 
$(window).on('resize', function(){
	if(parseInt($('body').css('width')) >= 1200){
		console.log("길이가 길 때");
	   $('.second_container').css('height', $('.body_div').css('height'));
	   $('.left_navi').css('height', $('.body_div').css('height'));
	} else {
		console.log("길이가 짧을 때");
		$('.left_navi').css('height',  '70px');
		$('.second_container').css('height', $('.body_div').css('height'));
	}
});
 


</script>

</body>

</html>







