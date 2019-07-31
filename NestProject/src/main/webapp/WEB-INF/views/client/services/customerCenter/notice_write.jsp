<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

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
    <title>1:1문의</title>
   
</head>

<body>



<header style="height: 60px; ">
            <div class="container0">
                <div style="width: 120px; display: inline-block;     padding-top: 10px;">
                <img style="width: 100%;" src="${pageContext.request.contextPath}/resources/images/nest_wlogo.png">      
                </div>
                <div id="customer_top_right_btn">
                <button  type="button" class="btn btn-outline">노트로이동</button>
                <button type="button" class="btn btn-outline">고객센터</button>
                </div>
            </div>
           
           
    </header>
    
  <div id="centerbtn">
        <p style="text-align: left; font-size: 12px;">고객센터 &nbsp; > &nbsp; 1:1 문의<p>
                <!--사이트 맵-->
                <h4 style="text-align: center; margin-top: 50px;">1:1문의</h4>
    </div>
    
    
    
    
    
<!-- 1:1 문의 글 작성  -->
    
    <div class="container0">
    <form>
    <!-- 제목 -->
  <div class="form-group row col-md-12" style="margin-bottom:60px; padding: 0%;">
    <div class="form-group col-md-12">
      <label for="inputEmail4"  class="col-sm-2 col-form-label">제목</label>
      <input type="text" class="form-control" id="inputEmail4">
    </div>
  </div>
    <!-- 체크 -->

    <div class="form-row align-items-center" style="border-bottom: solid 1px #d2d2d2;">
      <span style="padding:20px 15px;">문의 유형 선택 </span>
      
        <div class="col-auto my-1">
      <label class="mr-sm-2 sr-only" for="inlineFormCustomSelect">Preference</label>
      <select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
        <option selected>Choose...</option>
        <option value="1">One</option>
        <option value="2">Two</option>
        <option value="3">Three</option>
      </select>
    </div>
      </div>
      


  <!-- 글 내용-->
 <div class="form-group">
    <label for="exampleFormControlTextarea1" class="col-sm-2 col-form-label">내용</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="20" ></textarea>
  </div>

  <!-- 버튼  -->
  <div class="form-group col-md-12 " style="margin: 50px 0px;" >
  <div style="margin: 0 auto; width: 810px; ">
    <div style="display: inline-block; width: 400px;">
      <button style="width: 100%; height: 46px;  background:  rgb(255, 119, 0); border:none;" type="submit" class="btn btn-primary">확인</button>
    </div>
    <div style="display: inline-block;  width: 400px;" >
    <!-- 취소 했을 경우 이전 페이지 (고객센터 메인으로 이동) -->
      <a style="width: 100%; height: 46px; background:#a7a7a7; border:none;" class="btn btn-primary" href="#" role="button">취소</a>
    </div>
  </div>
  </div>
</form>
   </div> 

	  <footer>
        <div id="footer" class="container_">


            <p id="text"><br>ⓒ 2019 Nest Corporation All rights reserved</p>
        </div>

    </footer>
	</body>
	</html>
   
    
    
    
    
    
    
    
    
    
    
    