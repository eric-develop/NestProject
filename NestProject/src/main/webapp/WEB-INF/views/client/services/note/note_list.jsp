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
	
	
@media ( min-width : 300px) and (max-width: 1199.98px) {
	
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
<body style="height:100%;width:100%;">
  
	<c:import url="../../common/navi.jsp"/>

<!--===========================노트 흰색=======================================================================-->
      
    <div id="box2" class="body_div">
         <div id="top_line">

        <div style=" display: inline-block; padding-left: 20px;">
          <h5>노트북</h5>
          <p style="margin: 0%;">내 노트북 목록</p>

        </div>
        <!---============   ==============---->
        <div style="float: right; margin-top: 40px;">
          <i class="fas fa-plus-circle" style="font-size: 10px; color: #F28B30; margin-right: 10px;"> </i>새노트
        </div>
      </div>
  <section class="whitebox">
      <!--================= 노트목록 ======================================-->
      <div id="note_table" style="height: 100%;">

        <table class="table">

          <thead>
            <tr>
              <th scope="col-md-6">제목</th>
              <th scope="col-md-2">만든 사람</th>
              <th scope="col-md-2">수정한 날짜</th>
              <th scope="col-md-2">공유 대상</th>
            </tr>
          </thead>
          <tbody>
            <tr class="topnav">
              <th scope="row"><i class="fas fa-caret-down" style="font-size:20px;margin-right: 10px;"></i>
                <i class="fas fa-sticky-note" style="font-size: 20px; color: #b8b8b8 ; margin-right: 4px;"></i>
                <span>내 노트북</span>
              </th>
              <td>홍길동</td>
              <td>7월 9일</td>
              <td>나에게만</td>
            </tr>

            <!---->
            <script src="http://code.jquery.com/jquery-latest.js"></script>
            <script type="text/javascript">
              $(document).ready(function () {

                $(".topnav").hover(function () {                    //마우스를 topnav에 오버시
                  $(this).parent().find(".subnav").slideDown('normal').show();                   //subnav가 내려옴.
                  $(this).parent().hover(function () {
                  }, function () {
                    $(this).parent().find(".subnav").slideUp('fast');                 //subnav에서 마우스 벗어났을 시 원위치시킴  
                  });
                });

              });  
            </script>

            <!---->





            <tr>
              <th scope="row">2</th>
              <td>Jacob</td>
              <td>Thornton</td>
              <td>@fat</td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>Larry</td>
              <td>the Bird</td>
              <td>@twitter</td>
            </tr>
          </tbody>
        </table>


      </div>

      <div id="whitebox_footer">
        <i class="fas fa-tags" style="font-size: 20px; color: #b8b8b8 ; margin-right: 10px;"></i>
        <input type="text" placeholder="태그추가" style="border: none; width: 400px;">
      </div>

    </section>
    
    
  </div>
  
      </section>
    </div>
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