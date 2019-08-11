<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko">

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<c:import url="../common/menubar.jsp"/>
		<div class="w" style="padding:15px;height: 800px;">
					<div style="padding:10px 0">
						<h4>노트북 목록</h4>
					</div>
					<table class="table">
						<colgroup>
							<col width="70%"/>
							<col width="10%"/>
							<col width="10%"/>
							<col width="10%"/>
						</colgroup>
						
						<style>
							.table .thead-dark th{background-color:#edededbd;border-top:2px solid #858796;border-bottom:#e3e6f0;color:#8587968a;font-weight:500;}
							@font-face { font-family: 'LotteMartHappy'; font-style: normal; font-weight: 400; src: url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartHappy/LotteMartHappyMedium.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartHappy/LotteMartHappyMedium.woff') format('woff'); } @font-face { font-family: 'LotteMartHappy'; font-style: normal; font-weight: 700; src: url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartHappy/LotteMartHappyBold.woff2') format('woff2'), url('//cdn.jsdelivr.net/korean-webfonts/1/corps/lottemart/LotteMartHappy/LotteMartHappyBold.woff') format('woff'); } .lottemarthappy * { font-family: 'LotteMartHappy', sans-serif; }
							th{
								font-family : 'LotteMartHappy';
								font-size : 15px;
							}
						</style>
						<thead class="thead-dark">
							<tr>
								<th>제목</th>
                                <th>작성일</th>
                                <th>작성자</th>
                                <th>작업</th>
                                <!-- md를 붙이시면 보통 사이즈 뜻입니다. / 좌측 네비 div에 col 1또는 2를 주시고 
								게시판 div에 11 또는 10/ 가로 숫자 합 12를 맞춰주신 후 th col에 각 각 숫자로 크기 주시면 됩니다.
								부트스트랩에 레이아웃 참조하시면 이해하시는데 큰 도움 될거 같아요 -->
							</tr>
						</thead>
						<tbody class="notebooklist">
							<!-- ${b.count} 는 없어서 우선 이대로 실행 -->
							<c:forEach items="${list}" var="notebook">
							<div class="sc3">
								<tr id="${notebook.nbno}">	
									
									<!---좋아요 or 추천 갯수 -->
									<td id="title"> 
										<a href="${pageContext.request.contextPath}/notebook/goNotebook.do?nbno=${notebook.nbno}&nbtitle=${notebook.nbtitle}" style="color: gray;">${notebook.nbtitle}&nbsp;&nbsp;[0]</a>
									</td>
									<td>8월 12일</td>
									<td>${member.userName}</td>
									<td>
										<a
											class="nav-link" href="#" id="userDropdown"
											role="button" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false" style="padding:0;"> 
											<i class="fas fa-ellipsis-h" style="color:#858796;"></i>
										</a>
									
										<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
											<a class="dropdown-item" onclick="changeTitle()" style="cursor:pointer;"> 노트북 이름바꾸기</a> 
											<a class="dropdown-item" onclick="deleteNoteBook()" style="cursor:pointer;"> 노트북 삭제</a>
										</div>
									</td>
									
								</tr>
								</div>
							</c:forEach>
						</tbody>
					</table>
					<c:out value="${pageBar}" escapeXml="false"/>
				</div>
		
		
		
		
	</div>
		<!-- End of Content Wrapper -->

		<!-- End of Page Wrapper -->

 	 <script>
 	 var select = 3;
 	 var nbno = $('.sc3').eq(3-3).children().children('tr').val();
     $('.sc3').click(function(){
        $('.sc3').css("background","#fff");
        $(this).css("background","#ebebeb");
        select=$(this).index();
        nbno = $(this).children().children('tr').val();
        $.ajax({
           url:'${pageContext.request.contextPath}/notebook/deleteNoteBook.do',
           data:{nbno:nbno},
           dataType:'json',
           success:function(data){
              $('#nbtitle').val(data.nbtitle);
              tinyMCE.activeEditor.setContent(data.nbcontent);
           },error : function(request,status,error){
                alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });
     });
 	 
 	 
 	 
 		 function deleteNoteBook(){
	      
	      $.ajax({
	         url:'${pageContext.request.contextPath}/notebook/deleteNoteBook.do',
	         type: 'POST',
	         data:{nbno:nbno},
	         dataType:'json',
	         success:function(data){
	            alert("삭제성공");
	            $('.sc3').eq(select-3).remove();
	            $('#nbtitle').val(null);
	            tinyMCE.activeEditor.setContent("  ");
	         },error : function(request,status,error){
	             alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	         }
	      });
	        
	   }
 		 
 		/* function changeTitle(){
 		      
 		      $.ajax({
 		         url:'${pageContext.request.contextPath}/notebook/changeTitle.do',
 		         type: 'POST',
 		         data:{nbno:nbno},
 		         dataType:'json',
 		         success:function(data){
 		            alert("삭제성공");
 		            $('.sc3').eq(select-3).remove();
 		            $('#nbtitle').val(null);
 		            tinyMCE.activeEditor.setContent("  ");
 		         },error : function(request,status,error){
 		             alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
 		         }
 		      });
 		        
 		   } */
  
      
	  </script>
</body>

</html>
