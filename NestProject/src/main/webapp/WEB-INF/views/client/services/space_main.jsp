<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html lang="ko" style="height:100%;width:100%;overflow:hidden">
<title>스페이스</title>

<body style="height:100%;width:100%;">
  <div style="height:100%;width:100%;">
  <c:import url="../common/navi.jsp"/>
     


    <!--===========================노트 흰색=====================================================================-->
    <section class="whitebox col-md-10 col-xs-11">

            <div id="top_line" style="padding-top: 20px;">


                <div style=" display: inline-block;">
                    <h5>노트북</h5>
                    <p style="margin: 0%;">내 노트북 목록</p>

                </div>
                <!---============   ==============---->
                <div style="float: right; margin-top: 20px;">
                    <i class="fas fa-users" style="font-size: 30px; color: #a8a8a8;"></i> <span style="color:#afafaf">10
                        members</span>
                    <div id="top_membericon" class="rounded-circle"></div>
                    <div id="top_membericon" class="rounded-circle"></div>
                    <div id="top_membericon" class="rounded-circle"></div>
                    <div id="top_membericon" class="rounded-circle"></div>
                    <div id="top_membericon" class="rounded-circle"></div>



                    <!---->
                    <div id="top_membericon" class="rounded-circle">
                        <p style="color: #fff; display: inline-block;    margin: 0;
                    padding: 2px;">5</p>
                    </div>
                    <!--5개의 사용자 아이콘 노출 후 남은 5명 숫자로 나타내야합니다,-->


                    <button type="button" class="btn btn-warning" style="margin-left: 10px;">초대하기</button>
                </div>
            </div>
            <!---=============================----------->

            <div>
                <!--left div-->
                <div style="width: 50%; display: inline-block; margin-top: 20px;">
                    <!--title-->
                    <h8 style="    display: inline-block;
            width: 50%;">Whats news</h8>
                    <!---->
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <!--리스트가 7개 이상일 경우 주석을 풀고, 11개 이상일 경우 추가하면 됩니다.-->
                            <!-- <li data-target="#carouselExampleIndicators" data-slide-to="2"></li> -->
                        </ol>
                        <div class="carousel-inner">
                            <ul class="carousel-item active" id="slide_ul">
                                <!-- <img src="resources/images/nest_logo.png" class="d-block w-100" alt="..."> -->

                                <li>
                                    <div id="news_membericon" class="rounded-circle">
                                        <!--  이미지 필요-->

                                    </div><span>Megan.R</span>
                                    <div id="space_news_first_div">
                                        <p id="space_gray_p">우리들의 소통 공간</p>
                                        <p id="space_blue_p">20분전 </p>
                                        <!--시간, 또는 날짜-->
                                        <div id="space_news_first_div2">

                                        </div>
                                    </div>
                                </li>
                                <li>
                                        <div id="news_membericon" class="rounded-circle">
                                                <!--  이미지 필요-->
        
                                            </div><span>Megan.R</span>
                                    <div id="space_news_first_div">
                                        <p id="space_gray_p">우리들의 소통 공간</p>
                                        <p id="space_blue_p">20분전 </p>
                                        <!--시간, 또는 날짜-->
                                        <div id="space_news_first_div2">
                                            <!--글 또는 이미지 -->
                                        </div>
                                    </div>
                                </li>
                                <li>
                                        <div id="news_membericon" class="rounded-circle">
                                                <!--  이미지 필요-->
        
                                            </div><span>Megan.R</span>
                                    <div id="space_news_first_div">
                                        <p id="space_gray_p">우리들의 소통 공간</p>
                                        <p id="space_blue_p">20분전 </p>
                                        <!--시간, 또는 날짜-->
                                        <div id="space_news_first_div2">

                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="carousel-item">
                                <ul class="carousel-item active" id="slide_ul">
                                    <!-- <img src="resources/images/nest_logo.png" class="d-block w-100" alt="..."> -->

                                    <li>
                                            <div id="news_membericon" class="rounded-circle">
                                                    <!--  이미지 필요-->
            
                                                </div><span>Megan.R</span>
                                        <div id="space_news_first_div">
                                            <p id="space_gray_p">우리들의 소통 공간</p>
                                            <p id="space_blue_p">20분전 </p>
                                            <!--시간, 또는 날짜-->
                                            <div id="space_news_first_div2">

                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                            <div id="news_membericon" class="rounded-circle">
                                                    <!--  이미지 필요-->
            
                                                </div><span>Megan.R</span>
                                        <div id="space_news_first_div">
                                            <p id="space_gray_p">우리들의 소통 공간</p>
                                            <p id="space_blue_p">20분전 </p>
                                            <!--시간, 또는 날짜-->
                                            <div id="space_news_first_div2">
                                                <!--글 또는 이미지 -->
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                            <div id="news_membericon" class="rounded-circle">
                                                    <!--  이미지 필요-->
            
                                                </div><span>Megan.R</span>
                                        <div id="space_news_first_div">
                                            <p id="space_gray_p">우리들의 소통 공간</p>
                                            <p id="space_blue_p">20분전 </p>
                                            <!--시간, 또는 날짜-->
                                            <div id="space_news_first_div2">

                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>

                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button"
                            data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button"
                            data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                <!---슬라이더 끝 --->


                <!------right div-->
                <div style="width: 48%; display: inline-block; float: right; margin-top: 20px;">
                    <h8 style="width: 48%; display:block;">Pinned Notes</h8>
                    <div id="space_right_first_div">

                        <!--======== 공유 노트 목록  ========-->
                        <div id="space_r_list">
                            <i class="far fa-list-alt"></i> <span id="space_r_list_title">2019 여름 휴가 계획 </span>
                            <!--글자 수 초과시 "..." 보여줘야합니다.-->
                        </div>
                    </div>
                </div>

            </div>



            <!--=================하단 노트목록 ======================================-->
            <div id="space_note_table">
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
    </div>
</body>

</html>