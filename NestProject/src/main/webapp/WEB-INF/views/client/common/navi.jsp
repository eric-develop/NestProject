<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>     
<c:import url="../../common/head.jsp"/>


<div id="left_navi" style="padding: 0%;" class="sidebar-sticky ">

	<div id="usericon">
		<div id="person_img_div" class="rounded-circle"></div>



		<span style="font-size: 16px; color: #fff;">user </span>
		<div id="left_nav_msg_div">
			<i id="left_nav_msg" class="fas fa-comment"></i> <span
				id="left_nav_msg_count"><b>2</b></span>
			<!-- 카톡 메세지 갯수 필 -->
		</div>


	</div>
	<div id="logoutdiv">
		<button id="note_loginbtn" type="button" class="btn-sm">로그아웃</button>

	</div>
	<div id="noticenav">
	
		<ul id="navul">
			<li id="newnote" class="navlinone">&nbsp;&nbsp;<i
				class="fas fa-plus-circle"
				style="font-size: 20px; color: #fff; margin-right: 10px;"> </i>새노트
			</li>
			<!-- - 모바일에서 메뉴 네비 드롭다운 -->
			<li class="nav-item dropdown"><a id="drop_1"style="color: #fff;"
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false"><i
						id="navli_icon" class="fas fa-cog"></i>노트</a>
					<div class="dropdown-menu">
						<a  class="dropdown-item" href="#"><i id="navli_icon"
							class="fas fa-caret-up"></i>모든노트</a> <a class="dropdown-item"
							href="#"><i id="navli_icon" class="fas fa-cog"></i>노트북</a> <a
							class="dropdown-item" href="#"><i id="navli_icon"
							class="far fa-question-circle"></i>새노트</a>
					</div>
			</li>
								
		</ul>
							
				</div>

					<div class="dropdown-menu2">
	    <ul style=" padding: 0; ">
				<li class="nav-item dropdown"><a id="drop_1"style="color: #fff;"
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false"><i
						id="navli_icon" class="fas fa-cog"></i>설정</a> 
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#"><i id="navli_icon"
							class="fas fa-caret-up"></i>업그레이드</a> <a class="dropdown-item"
							href="#"><i id="navli_icon" class="fas fa-cog"></i>설정</a> <a
							class="dropdown-item" href="#"><i id="navli_icon"
							class="far fa-question-circle"></i>고객센터</a>
					</div>
				 </li>
		</ul>
			</div>




		
			<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
				class="fas fa-sticky-note"></i>모든 노트
			</li>
			<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
				class="far fa-sticky-note"></i>노트북
			</li>
			<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
				class="fas fa-folder"></i>공유 문서함
			</li>
			<li id="navli" class="navlinone">&nbsp;&nbsp;<i id="navli_icon"
				class="fas fa-tags"></i>태그
			</li>
			<li id="navli" class="navlinone">&nbsp;&nbsp;<i id="navli_icon"
				class="fas fa-trash-alt"></i>휴지통
			</li>
		



			<!-- --아코디언 매뉴 -->
			<li class="sidebar-item showw"><a href="#pages"
				data-toggle="collapse" class="sidebar-link collapsed">
					&nbsp;&nbsp; <i class="fas fa-th-large"
					style="font-size: 20px; color: #fff; margin-right: 10px; padding-top: 10px;"></i><span
					style="color: #fff;" class="align-middle">스페이스</span>
			    </a>
			    
				<ul id="pages" class="sidebar-dropdown list-unstyled collapse ">
					<li style="padding: 10px; height: 40px;" class="sidebar-link"><a
						class="sidebar-link" href="#"
						style="text-decoration: none; color: #fff; display: block;" data-toggle="modal" data-target="#exampleModal">스페이스
							만들기</a></li>
							
					     <c:forEach items="${spaceList}" var="sList">
              				<li style="padding: 10px; height: 40px;" class="sidebar-link">
              				<a class="sidebar-link" href="#" style="text-decoration: none; color: #fff; display: block;">${sList.spaceName}</a>
							</li>
             			  </c:forEach>	
				</ul>
			</li>
	<!-------------------------------- 스페이스 생성하는 모달 ------------------------------>
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content" style="width:650px; height:400px;">
		      <div class="modal-header" style="border:none;">
		        <h5 class="modal-title" id="exampleModalLabel">스페이스 생성</h5>
		        <button type="button" id="xBtn" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true" >&times;</span>
		          
		        </button>
		      </div>
		      
		      <form action="${pageContext.request.contextPath}/space/createSpace.do" method="post">
		        <div class="modal-body">
		      	
		       	  <div class="form-group">
			    	<input type="text" class="form-control" id="spaceName" name="spaceName" placeholder="스페이스 이름을 입력하세요">
			  	  </div>
			  	  
			  	   <div class="form-group">
			    	<input type="text" class="form-control" id="spaceExplain" name="spaceExplain" placeholder="스페이스에 대한 설명을 적어주세요" style="height:60px; margin:0px;">
			  	   </div>
			  	   
			  	   <div class="form-group form-check" >
					  <input type="checkbox" class="form-check-input" id="postSpaceDir" name="postSpaceDir">
				 	  <label class="form-check-label" for="dirPostCheck">스페이스 디렉토리에 게시</label>
				   </div>
 				   
 				   <label>접근 권한 설정 </label>
 				   <select class="form-control form-control-sm" id="rightSet" name="rightSet">
 				   <option value="none">선택</option>
				   <option value="A1">다른 사람들이 접근 권한을 요청해야합니다.</option>
				   <option value="A2">다른 사람들이 보기 권한을 가지고 접근할 수 있습니다.</option>
				   <option value="A3">다른 사람들이 수정 권한을 가지고 접근할 수 있습니다.</option>
				   <option value="A4">다른 사람들이 수정 권한 및 다른 사용자 초대권한을 가지고 접근할 수 있습니다.</option>
				   </select>

		      </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal" onclick="cancelCreateSpace();">취소</button>
		        <button type="submit" class="btn btn-primary" onclick="createSpace();">만들기</button>
		      </div>
		    </form>
		      
		    </div>
		  </div>
		</div>



			<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
				class="fas fa-caret-up"></i>업그레이드
			</li>
			<!---새창 오픈-->
			<!--  <a href="community.html" target="_blank" style="list-style:none; text-decoration: none; color: #fff;"> -->
			<li id="navli" onclick="goToComunity();">&nbsp;&nbsp;<i id="navli_icon"
				class="fas fa-comment"></i>커뮤니티
			</li>


			<li id="navli">&nbsp;&nbsp;<i id="navli_icon" class="fas fa-cog"></i>설정
			</li>
			<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
				class="far fa-question-circle"></i>고객센터
			</li>
	
	</div>
	
	<script>
		function goToComunity(){
			window.open("${pageContext.request.contextPath}/board/board.do");
		}
	
	</script>
	