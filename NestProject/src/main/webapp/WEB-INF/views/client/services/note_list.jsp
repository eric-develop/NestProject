<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<html lang="ko" style="height:100%;width:100%;overflow:hidden">

<head>
  <meta charset="UTF-8">
  <script src="https://kit.fontawesome.com/df37f96d20.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery-3.4.0.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/smoothness/jquery-ui.css">
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

  <title>노트북</title>
 
</head>

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
        <div style="float: right; margin-top: 50px;">
          <i class="fas fa-plus-circle" style="font-size: 10px; color: #F28B30; margin-right: 10px;"> </i>새노트
        </div>
      </div>
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
</body>

</html>