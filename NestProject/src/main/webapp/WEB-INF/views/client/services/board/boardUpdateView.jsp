<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.nestCor.nest.services.board.model.vo.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper" style="background-color: #f6c23e">

		<c:import url="../board/common/menubar.jsp"/>

			<!-- 게시글 작성 part -->
			<div class="col-md-8 col-xs-12 " id="container0 "
				style="padding: 0%; margin: 0%; margin: 0 auto;">
				<form action="${pageContext.request.contextPath}/board/boardUpdate.do?mNo=${member.mNo}">
					<!-- 제목 -->
					<div class="form-group row col-md-12 col-xs-12"
						style="margin-bottom: 60px; padding: 0%; margin: 0 auto;">
						<div class="form-group col-md-12 col-xs-12"
							style="padding: 0%; margin: 0%; margin: 0 auto;">
							<label for="btitle" class="col-sm-2 col-form-label">제목</label>
							<input type="text" class="form-control" id="btitle" name="btitle" value="${board.btitle}">
							<input type="hidden" name="bno" value="${bno}"/>
							<input type="hidden" name="mNo" value="${member.mNo}"/>
						</div>
					</div>
					<!-- 체크 -->
			
					<div class="form-row align-items-center"
						style="border-bottom: solid 1px #d2d2d2;">
			
						<div class="col-auto my-1">
							
						</div>
					</div>
			
					<!-- 글 내용-->
					<div class="form-group">
						<label for="bcontent"
							class="col-sm-2 col-form-label">내용</label>
						<textarea class="form-control" id="bcontent" name="bcontent" rows="20">${board.bcontent}</textarea>
					</div>
			
					<!-- 버튼  -->
					<div class="form-group col-md-8 col-xs-12 "
						style="margin: 50px 0px; margin: 0 auto;">
						<div style="margin: 0 auto;">
							<div style="display: inline-block; width: 100%;"
								class="col-md-6 col-xs-12 ">
								<br><br>
								<button
									style="width: 100%; height: 46px; background: rgb(255, 119, 0); border: none;"
									type="submit" class="btn btn-primary" >수정하기</button>
							</div>
							<div style="display: inline-block; float: right;"
								class="col-md-6 col-xs-12">
								<br><br>
								<button
									style="width: 100%; height: 46px; background: #a7a7a7; border: none;"
									class="btn btn-primary" type="button" id="cancelBotton" 
									onclick="location.href='${pageContext.request.contextPath}/board/board.do?mNo=${member.mNo}'">취소</button>
							</div>
						</div>
					</div>
				</form>
			</div>
			<br><br>
		<c:import url="../board/common/footer.jsp"/>
	</div>
	<!-- End of Content Wrapper -->

	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<script type="text/javascript">
		//submit 버튼이 눌렸을때 유효성 검사를 위해 추가
		$('form').submit(function(event){
	    	if(btitle.value==""||btitle.value.length==0){
				alert("제목을 입력해 주세요");
				return false;
			} else if(bcontent.value==""||bcontent.value.length==0){
				alert("내용을 입력해 주세요");
				return false;
			}
	    });
	</script>
</body>

</html>
