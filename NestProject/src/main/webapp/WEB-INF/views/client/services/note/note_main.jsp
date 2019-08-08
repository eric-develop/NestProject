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


<body style="height:100%; width:100%;">
  
  
   <c:import url="../../common/navi.jsp"/>


    <!--=======================================노트 목록=========================================================-->


    <div id="second_container" value="slide">
      <div id="sc1" style="border-bottom: 1px solid #1a1a1a; padding: 14px;">
        <h5 id="toptext">모든 노트</h5>
        <p id="sclist">0개의 노트</p>
      </div>
      <div id="sc2">
        <div style="padding:10px;">
          <i class="far fa-lightbulb"></i>
          <span>
            노트 활용 Tip !
            NEST에 오신 것을 환영합니다.
            NEST는 노트 필기, 작업 관리, 프로젝트 진행, 자료 진행, 자료 정리를 위한 최적의…
          </span>
        </div>
      </div>
      <div id="sc3">
        <div style="padding:10px;">
          <p>첨부파일의 놀라움

            문서, PDF, 사진, 동영상, 오디오 파일을 노트에 직접 끌어다 놓으세요. 서식 지정 모음에서 종이클립 아이콘을 클릭해 첨부..</p>
        </div>
      </div>
    </div>





    <!--===========================노트 흰색=====================================================================-->
    <div id="body_div">
    <div id="top_line">

        <!---============  클릭시 확장 div,스크립트  ==============---->
        <div style=" margin-top: 30px; display: inline-block;">
          <span style="padding-left:20px;" id="sizeBtn" onclick="sizeChange();" style="cursor: pointer;"><i class="fas fa-expand"  style="font-size:20px; margin-right: 10px;"></i>화면
            크게</span>
          <button type="button" class="btn btn-primary btn-sm"
            style="margin-left: 20px; background: #F28B30; border: none; color: #fff;">공유하기</button>

        </div>
        <div class="input-group mb-3" style="    width: 280px;
             float: right;
             margin-top: 20px;">
          <input style="width: 200px;" type="text" class="form-control" aria-label="Recipient's username"
            aria-describedby="button-addon2">
          <div class="input-group-append">
            <button class="btn btn-outline-secondary" type="button" id="button-addon2">검색</button>
          </div>
        </div>

        <!---============   ==============---->



      </div>
    
    <section id="box2" class="whitebox2">

      




      <!------------------------------------------------------------------------------------------------------------------------------------------>
      <div id="note">
        <h4>NEST에 오신 것을 환영합니다 👋</h4>


        <p> NEST는 노트 필기, 작업 관리, 프로젝트 진행, 자료 정리를 위한 최적의 장소입니다. 이제부터 소개해 드릴 인기 기능들을 활용해 정보를 캡처하고, 정리하고, 어디서나 액세스하세요.
        </p>

        <br><br><br><br><br>


        <p><b>아이디어 캡처</b></p>
        <br><br><br>

        <ul style="list-style: symbols()">
          <li>멋진 아이디어를 모두 기록하세요</li>
          <li>좋아하는 글꼴로 노트 필기</li>
          <li>굵은 글씨, 기울임꼴, 밑줄, 하이라이트로 텍스트를 강조하거나, 텍스트에 색상을 추가하세요.</li>
        </ul>

        <br><br><br><br><br><br><br><br>



        <p><b> 할 일 목록 만들기</b></p>


        <br><br><br>
        <p> 체크박스와 번호 매기기 목록으로 작업을 관리하고 업무를 진행시키세요.</p>
        <br><br><br>

        1. [x]🎉 Evernote 사용 방법 알아보기
        2. []📝 노트 만들기
        3. []📘 노트북으로 노트를 정리하세요
        <br><br><br><br><br><br><br>



        알리미 추가
        * Mac, Windows, iOS, Android에서 사용할 수 있습니다. www.evernote.com/download로 이동하세요.


        작업과 마감일을 관리하세요. 알람 시계 아이콘을 클릭해 노트에 알리미를 설정하세요.






        표 만들기


        중요한 정보를 정리해 프로젝트를 관리하세요.
        더 자세히 알고 싶으세요? 표에 관한 블로그 게시물을 읽어보세요.
        세부 정보
        Gifs
        셀의 오른쪽 상단에서 아래 방향 화살표를 선택해 표의 서식을 지정하세요.


        프로 팁: 셀을 병합할 수 있습니다!
        셀 사이의 회색 점 위에 마우스를 갖다 대어 행과 열을 추가하세요.
        표에서 행과 열을 끌어서 이동하세요.




        노트북으로 노트 정리


        노트북은 노트의 모음입니다. 새로운 노트는 다른 노트북을 지정하지 않는 한 기본 노트북에 저장됩니다. 추가 노트북을 만들어 주제별로 노트를 정리하세요. 다른 사람들의 노트 정리 방법을 참고하세요:


        업무 프로젝트
        * 프로젝트 아이디어
        * 회의 노트
        * 프로젝트 일정표
        사회학 101
        * 강의 노트
        * 강의 계획서
        * 에세이 초안
        뉴욕 여행
        * 호텔 정보
        * 항공편 정보
        * 여행 스케줄




        노트 공유


        노트 오른쪽 상단 모서리의 공유 버튼을 클릭해 다른 Evernote 사용자들과 노트를 공유할 수 있습니다. 이메일이나 공유 링크를 통해서도 모든 사람과 노트를 공유할 수 있습니다.










        질문이 있으신가요?


        고센터에서 Nest에 관해 자세히 알아보세요.

      </div>
      <div id="whitebox_footer">
        <i class="fas fa-tags" style="font-size: 20px; color: #b8b8b8 ; margin-right: 10px;"></i>
        <input type="text" placeholder="태그추가" style="border: none; width: 400px;">
      </div>

    </section>
    </div>
  <script>
    function sizeChange(){
          if(document.getElementById('second_container').classList.toggle('hide-element')){
            document.getElementById('second_container').style.display = 'none';
          } else {
            document.getElementById('second_container').style.display = 'block';
          }
          document.getElementById('box2').classList.toggle('whitebox2');
          document.getElementById('box2').classList.toggle('whitebox2_wide');
    }
  </script>


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

</body>

</html>