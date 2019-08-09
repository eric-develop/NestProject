<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>     
<!DOCTYPE html>
<html lang="ko" style="height:100%;width:100%;">
<head>
<c:import url="../../common/head.jsp">
	<c:param name="titleName" value="공유문서함" />
</c:import>

<style>

<style>


@media ( min-width : 1200px) {
	
#second_container{
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

}.whitebox{
	width: 85%;
	height:90%;
	display: inline-block;
}#note{
height:auto;
padding:20px;
width:100%;
overflow-y:auto;

}
#whitebox_footer{
bottom: 0; 
position: fixed;
display: inline-block;
height: 50px;
border-top: #d1d1d1 1px solid;
width: 100%;
background: #fff;
}.body_div{
height: 100%;
width: 85%;
float: left;

}
}
	
	
@media ( min-width : 300px) and (max-width: 1199.98px){
	
#second_container{
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

}.whitebox{
	width:100%;
	height:90%;
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
}.body_div{
height: 100%;
width: 100%;
float: left;
}
}
</style>
    

    

</head>
<body style="height:100%; width:100%;">
  
  
   <c:import url="../../common/navi.jsp"/>


<!--===========================노트 흰색=======================================================================-->
                    <div id="box2" class="body_div">  
                      <div id="top_line">
              
           
                        <div style=" display: inline-block; margin-left: 20px;">
                       <h5>공유 문서함</h5>
                 
                       <p  id="trash_list">0개</p><!--리스트 갯수-->
                        </div> 
                      <!---============   ==============---->
                      
                      </div>
      
        <section class="whitebox">
       
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


<script type="text/javascript">
// ing functionalism
function widthResize(){
	if(parseInt($('#body_div').css('width')) >= 1200){
	   $('#second_container').css('height', $('#body_div').css('height'));
	   $('#left_navi').css('height', $('#body_div').css('height'));
	} else {
		$('#left_navi').css('height', '70px');
	}
}
//최초 실행시 
$(function(){
	if(parseInt($('#body_div').css('width')) >= 1200){
		   $('#second_container').css('height', $('#body_div').css('height'));
		   $('#left_navi').css('height', $('#body_div').css('height'));
		} else {
			$('#left_navi').css('height', '70px');"src/main/webapp/WEB-INF/views/client/services/note/note_tag.jsp"
		}
});

// 화면 사이즈 변경시 
$(window).on('resize', function(){
	if(parseInt($('#body_div').css('width')) >= 1200){
	   $('#second_container').css('height', $('#body_div').css('height'));
	   $('#left_navi').css('height', $('#body_div').css('height'));
	} else {
		$('#left_navi').css('height', '70px');
	}
});



</script>



   
          
        
        </section>
        </div>

</body>
</html>