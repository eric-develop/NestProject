<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko" style="height: 100%; width: 100%; ">
<c:import url="../../common/head.jsp">
	<c:param name="titleName" value="스페이스" />
</c:import>
<head>

<style> 

@media ( min-width : 1200px;) {
	#top_line{
	width: 80%;
	padding:0px 20px;
	}
	.whitebox{
	width: 80%;
	}
	body{
	margin: 0 auto;
	}
	}

@media ( min-width : 400px;) {
	#top_line{
	width: 100%;
	float: left;
	padding:0px 20px;
	}
	.whitebox{
	width: 100%;
	float: left;
	}
	body{
	margin: 0 auto;
	}
	}


</style>

</head>
<body style="height: 100%; width: 100%;" >

		<c:import url="../../common/navi.jsp" />



		<!--===========================노트 흰색=====================================================================-->
		

			<div id="top_line">


				<div style="display: inline-block;"> 
					<h5>노트북</h5>
					<p >내 노트북 목록</p>

				</div>
				<!---============   ==============---->
				<div style="float: right; margin-top: 20px;">
					<i class="fas fa-users" style="font-size: 30px; color: #a8a8a8;"></i>
					<span style="color: #afafaf">10 members</span>
					<div id="top_membericon" class="rounded-circle"></div>
					<div id="top_membericon" class="rounded-circle"></div>
					<div id="top_membericon" class="rounded-circle"></div>
					<div id="top_membericon" class="rounded-circle"></div>
					<div id="top_membericon" class="rounded-circle"></div>



					<!---->
					<div id="top_membericon" class="rounded-circle">
						<p
							style="color: #fff; display: inline-block; margin: 0; padding: 2px;">5</p>
					</div>
					<!--5개의 사용자 아이콘 노출 후 남은 5명 숫자로 나타내야합니다,-->


					<button type="button" class="btn btn-warning"
						style="margin-left: 10px;">초대하기</button>
				</div>
			</div>
			<!---=============================----------->

			<section class="whitebox ">
				<div class="row">
				<!--left_div-->
				<div id="space_left" class="col-lg-6 col-md-12 col-xs-12">
					<!--title-->
					<h8 style="display:inline-block;  padding: 0px 20px 4px 10px;"> Whats news</h8>
	<!-- - -->
					<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
						 <ol class="carousel-indicators">
							<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
							<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						</ol> 
						
						<div class="carousel-inner">
					
							<ul class="carousel-item active col-lg-12 col-md-12 col-xs-12" id="slide_ul">
								<li class="col-md-4 col-xs-4 "> 
								<div style="width: 100%; height: 50%;">
									<div id="news_membericon" class="rounded-circle">
								
										<!--=========data-intervala .carousel-item에 추가 하면 자동으로 다음 항목으로 순환하는 시간 간격을 변경합니다. -->
									</div>
									<span>Megan.R</span>
									<div id="space_news_first_div">
										<p id="space_gray_p">우리들의 소통 공간</p>
										<p id="space_blue_p">20분전</p>
										</div>
										</div>
										<!--시간, 또는 날짜-->
										<div id="space_news_first_div2"></div>
									
								</li>
								
								<li class="col-md-4 col-xs-4"> 
									<div style="width: 100%; height: 50%;">
									<div id="news_membericon" class="rounded-circle">
								
										<!--=========data-intervala .carousel-item에 추가 하면 자동으로 다음 항목으로 순환하는 시간 간격을 변경합니다. -->
									</div>
									<span>Megan.R</span>
									<div id="space_news_first_div">
										<p id="space_gray_p">우리들의 소통 공간</p>
										<p id="space_blue_p">20분전</p>
										</div>
										</div>
										<!--시간, 또는 날짜-->
										<div id="space_news_first_div2"></div>
									
								</li>
								<li class="col-md-4 col-xs-4"> 
								<div style="width: 100%; height: 50%;">
									<div id="news_membericon" class="rounded-circle">
								
										<!--=========data-intervala .carousel-item에 추가 하면 자동으로 다음 항목으로 순환하는 시간 간격을 변경합니다. -->
									</div>
									<span>Megan.R</span>
									<div id="space_news_first_div">
										<p id="space_gray_p">우리들의 소통 공간</p>
										<p id="space_blue_p">20분전</p>
										</div>
										</div>
										<!--시간, 또는 날짜-->
										<div id="space_news_first_div2"></div>
									
								</li>
								
								</ul>
							
								<ul class="carousel-item active col-lg-12 col-md-12 col-xs-12" id="slide_ul">
									<!-- <img src="resources/images/nest_logo.png" class="d-block w-100" alt="..."> -->

									<li class="col-md-4 col-xs-4"> 
								<div style="width: 100%; height: 50%;">
									<div id="news_membericon" class="rounded-circle">
								
										<!--=========data-intervala .carousel-item에 추가 하면 자동으로 다음 항목으로 순환하는 시간 간격을 변경합니다. -->
									</div>
									<span>Megan.R</span>
									<div id="space_news_first_div">
										<p id="space_gray_p">우리들의 소통 공간</p>
										<p id="space_blue_p">20분전</p>
										</div>
										</div>
										<!--시간, 또는 날짜-->
										<div id="space_news_first_div2"></div>
									
								</li>
									<li class="col-md-4 col-xs-4"> 
								<div style="width: 100%; height: 50%;">
									<div id="news_membericon" class="rounded-circle">
								
										<!--=========data-intervala .carousel-item에 추가 하면 자동으로 다음 항목으로 순환하는 시간 간격을 변경합니다. -->
									</div>
									<span>Megan.R</span>
									<div id="space_news_first_div">
										<p id="space_gray_p">우리들의 소통 공간</p>
										<p id="space_blue_p">20분전</p>
										</div>
										</div>
										<!--시간, 또는 날짜-->
										<div id="space_news_first_div2"></div>
									
								</li>
                                    <li class="col-md-4 col-xs-4"> 
								<div style="width: 100%; height: 50%;">
									<div id="news_membericon" class="rounded-circle">
								
										<!--=========data-intervala .carousel-item에 추가 하면 자동으로 다음 항목으로 순환하는 시간 간격을 변경합니다. -->
									</div>
									<span>Megan.R</span>
									<div id="space_news_first_div">
										<p id="space_gray_p">우리들의 소통 공간</p>
										<p id="space_blue_p">20분전</p>
										</div>
										</div>
										<!--시간, 또는 날짜-->
										<div id="space_news_first_div2"></div>
									
								</li>
							</ul>
							<ul class="carousel-item active col-lg-12 col-md-12 col-xs-12" id="slide_ul">
									<!-- <img src="resources/images/nest_logo.png" class="d-block w-100" alt="..."> -->

									<li class="col-md-4 col-xs-4"> 
								<div style="width: 100%; height: 50%;">
									<div id="news_membericon" class="rounded-circle">
								
										<!--=========data-intervala .carousel-item에 추가 하면 자동으로 다음 항목으로 순환하는 시간 간격을 변경합니다. -->
									</div>
									<span>Megan.R</span>
									<div id="space_news_first_div">
										<p id="space_gray_p">우리들의 소통 공간</p>
										<p id="space_blue_p">20분전</p>
										</div>
										</div>
										<!--시간, 또는 날짜-->
										<div id="space_news_first_div2"></div>
									
								</li>
									<li class="col-md-4 col-xs-4"> 
								<div style="width: 100%; height: 50%;">
									<div id="news_membericon" class="rounded-circle">
								
										<!--=========data-intervala .carousel-item에 추가 하면 자동으로 다음 항목으로 순환하는 시간 간격을 변경합니다. -->
									</div>
									<span>Megan.R</span>
									<div id="space_news_first_div">
										<p id="space_gray_p">우리들의 소통 공간</p>
										<p id="space_blue_p">20분전</p>
										</div>
										</div>
										<!--시간, 또는 날짜-->
										<div id="space_news_first_div2"></div>
									
								</li>
                                    <li class="col-md-4 col-xs-4"> 
								<div style="width: 100%; height: 50%;">
									<div id="news_membericon" class="rounded-circle">
								
										<!--=========data-intervala .carousel-item에 추가 하면 자동으로 다음 항목으로 순환하는 시간 간격을 변경합니다. -->
									</div>
									<span>Megan.R</span>
									<div id="space_news_first_div">
										<p id="space_gray_p">우리들의 소통 공간</p>
										<p id="space_blue_p">20분전</p>
										</div>
										</div>
										<!--시간, 또는 날짜-->
										<div id="space_news_first_div2"></div>
									
								</li>
							</ul>
					
						<a class="carousel-control-prev" href="#carouselExampleIndicators"
							role="button" data-slide="prev"> <span
							class="carousel-control-prev-icon" aria-hidden="true"></span> <span
							class="sr-only">Previous</span>
						</a> 
						<a class="carousel-control-next"
							href="#carouselExampleIndicators" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
				<!---슬라이더 끝 --->


			 
				</div>
			</div>
						<!------right_div-->
  <script>


      //편집 누르면 편집 버튼이 사라지고 추가, 삭제 btn show.
    function space_edit(){
      

      $("#space_add_id").show();
      $("#space_delete_id").show();
      
      

      $("#space_right_first_div").show();
      $("#space_edit_id").hide();
      $("#space_cencel_id").show();
      
      $("#space_right_first_div2").hide();
      }
      
      //취소 버튼 클릭시 편집 버튼 있는 초기 div show
      function space_cencel(){
      

      $("#space_add_id").hide();
      $("#space_delete_id").hide();
      


      $("#space_right_first_div").hide();
      $("#space_edit_id").show();
      $("#space_cencel_id").hide();
      $("#space_right_first_div2").show();
      }
      
      function space_add(){      
        var checkedCount = 0;
        $('input:checkbox').each(function(){
          $(this).prop('checked') && checkedCount ++;
        });

        console.log(checkedCount);
              if (checkedCount > 0){
              
                var space_add_ok = true;

                if(space_delete ==true){
                  var space_add_alert ='추가 되었습니다.'
                  alert(space_add_alert);
                }
        $("#space_add_id").hide();
        $("#space_delete_id").hide();
        $("#space_right_first_div").hide();
        $("#space_cencel_id").hide();

     
        $("#space_edit_id").show();
        $("#space_r_list").show();
        $("#space_right_first_div2").show();
     
        }
    }
        //삭제 시 
        function space_delete() {
            var checkedCount = 0;
        $('input:checkbox').each(function(){
          $(this).prop('checked') && checkedCount ++;
        });

        if(checkedCount > 0){
                var space_delete_confirm = confirm("정말 삭제하시겠어요?");
                if (space_delete_confirm == true) {
                  //document.write(close);

                  $('input:checkbox').each(function(){
                      if($(this).prop('checked')){
                        $(this).parent().parent().remove();
                      }
                    
                  });
                    $("#space_add_id").hide();
                  $("#space_delete_id").hide();
                  $("#space_right_first_div").hide();

                  $("#space_edit_id").show();
                  $("#space_rlist").show();
                  $("#space_cencel_id").hide();
                  $("#space_right_first_div2").show();

                } else if (space_delete_confirm == false) {
                  //document.write(close);

                }
              }
               
            }
          
          
  </script>
</head>


  <!-- 
  <a href="javascript:doDisplay();">> 내용보기</a><br/><br/>
<div id="myDIV">
    <h1>내용을 접거나 펴는 방법</h1>
    <p>display block 속성값은 내부 요소를 나타나게 하며 none 는 사라지게 합니다.</p>
</div> -->

  <div id="space_right" class="col-lg-6 col-md-12 col-xs-12">
    <div>
      <h8 style="display:inline-block;">Pinned Notes</h8>

      <!-- --******************-  -->
      <button onclick="space_edit();" id="space_edit_id">편집</button>
      <button onclick="space_add();" id="space_add_id">추가</button>
      <button onclick="space_delete();" id="space_delete_id">삭제</button>
      <button onclick="space_cencel();" id="space_cencel_id">취소</button>
      
    </div>
    
   

    <!---**********************-->
    <!--추가시 div 생성-->
    <div id="space_right_first_div2" class="col-lg-12 col-md-12 col-xs-12">
    
      <div id="space_r_list" class="col-lg-4 col-md-4 col-xs-4">
        <i class="far fa-list-alt"></i> <span id="space_r_list_title">2019 여름 휴가 계획 </span>
        
      </div>
      <!---글자수 자르기, ... 붙이기-->
      <script>

        var space_r_list_title = "제목 넣어주세요.";

        document.getElementById("space_r_list_title").innerHTML=space_r_list_title.substring(0,6)+'...';
       

      </script>
    </div>
<!-------->
    <div id="space_right_first_div" class="col-lg-12 col-md-12 col-xs-12">
      <table id="space_add_div" class="table col-lg-12 col-md-12 col-xs-12">

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

            <th scope="row"><i class="fas fa-caret-down" style="font-size: 20px; margin-right: 10px;"></i>
              <i class="fas fa-sticky-note" style="font-size: 20px; color: #b8b8b8; margin-right: 4px;"></i>
              <span>내 노트북</span>
            </th>
            <td>홍길동</td>
            <td>7월 9일</td>
            <td>나에게만</td>
          </tr>


          <script src="http://code.jquery.com/jquery-latest.js"></script>




          <tr>


            <th scope="row">2 <input type="checkbox" name="check_note1"></th>

            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
          </tr>
          <tr>

            <th scope="row">3 <input type="checkbox" name="check_note2"></th>

            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
          </tr>
        </tbody>
      </table>
    </div>
   
    <!-- -- -->


  </div>

	<!--=================하단 노트목록 ======================================-->
<div id="space_note_table" class="col-lg-12">
                <p style="display: inline-block;    margin-top: 50px; ;font-weight: 500;"><i class="fas fa-heart" style="margin-right: 10px;"></i>함께쓰는 공유 노트</p>
                <!--새노트-->
                    <div style="float: right; margin-top: 50px; cursor: pointer;">
                            <i class="fas fa-plus-circle" style="font-size: 10px; color: #F28B30; margin-right: 10px;"> </i>새노트
                          </div>
                        
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
                                <i class="fas fa-sticky-note"
                                    style="font-size: 20px; color: #b8b8b8 ; margin-right: 4px;"></i>
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
	</section>
	

	
</body>
</html>