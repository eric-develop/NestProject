<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>


<head>
<style>
@media ( min-width : 1200px) {
	.container_2 {
		margin: 0 auto;
		width: 1200px;
		height: 100%;
	}
}

@media ( min-width : 300px) and (max-width: 1199.98px) {
	.container_2 {
		margin: 0 auto;
		width: 100%;
		height: 16%;
	}
	#centerbtn2 {
		width: 100%;
	}
	#cus_only {
		height: 68%;
	}
}
</style>


</head>
<title>고객센터</title>



<body>
	<c:import url="../../common/customer_navi.jsp" />

	<!-----검색창-->

	<!----------->
	<div class="container_2" id="centerbtn2"">
		<h4 style="text-align: center; margin-top: 66px;">
			<b>고객센터</b>
		</h4>
		<p style="text-align: center; font-size: 14px;">
			고객을 최우선으로 생각하는 네스트입니다.<br> 고객센터를 이용하시면 1:1문의, 자주찾는 질문을 통해 가장
			신속하고 정확한 답변을 받으실 수 있습니다.

		</p>


	</div>

	<div id="cus_only">
		<!------------->
		<div id="center1">
			<h6>자주 찾는 질문</h6>
		</div>


		<!---------->
		<div id="center2">
			<h6>1:1 문의하기</h6>
		</div>


		<!---------->
		<div id="center3">
			<h6>공지사항</h6>
		</div>
	</div>
	<!---------------------->









	<div id="footer" class="container_">


		<p id="text">
			<br>ⓒ 2019 Nest Corporation All rights reserved
		</p>
	</div>




</body>
</html>