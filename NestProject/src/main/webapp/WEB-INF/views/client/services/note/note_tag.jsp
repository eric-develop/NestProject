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

}.whitebox2{
	width: 65%;
	display: inline-block;
}.whitebox2_wide{
	width: 85%;
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
}#body_div{
height: auto;

}
}
	
	
@media ( min-width : 400px) {
	
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

}.whitebox2{
	width: 65%;
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
}#body_div{
}
}
</style>
    

</head>
<body style="height:100%;width:100%;">

 
 <c:import url="../../common/navi.jsp"/>

<!--===========================노트 흰색=====================================================================-->
      
       <div id="body_div">
		<div id="top_line">



			<div style="display: inline-block; padding: 20px;">

				<i class="fas fa-tags"
					style="font-size: 40px; color: #F28B30; margin-right: 10px;"></i>
				<h5 style="display: inline-block">태그</h5>


			</div>
			<div class="input-group mb-3" style="    width: 280px;
                      float: right;
                      margin-top: 20px;">
                          <input style="width: 200px;" type="text" class="form-control" aria-label="Recipient's username" aria-describedby="button-addon2" placeholder="태그 찾기">
                          <div class="input-group-append">
                            <button class="btn btn-outline-secondary" type="button" id="button-addon2">검색</button>
                          </div>
                        </div>     
          
			<!---============   ==============---->

		</div>

		<section class="whitebox">

			<div id="note"></div>
            
          

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
			$('#left_navi').css('height', '70px');
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