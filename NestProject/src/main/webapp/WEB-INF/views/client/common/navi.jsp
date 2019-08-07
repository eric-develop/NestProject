<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:import url="../common/head.jsp">

</c:import>

<div id="left_navi" style="padding: 0%;" class="sidebar-sticky ">

	<div id="usericon">
		<div id="person_img_div" class="rounded-circle"></div>



		<span style="font-size: 16px; color: #fff;">user </span>
		<div id="left_nav_msg_div">
			<i id="left_nav_msg" class="fas fa-comment"></i> <span
				id="left_nav_msg_count">2</span>
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
							</li>




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
							</li>
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




			<!-- --아코디언 매뉴 	 -->
			<li class="sidebar-item showw"><a href="#pages"
				data-toggle="collapse" class="sidebar-link collapsed">
					&nbsp;&nbsp; <i class="fas fa-th-large"
					style="font-size: 20px; color: #fff; margin-right: 10px; padding-top: 10px;"></i><span
					style="color: #fff;" class="align-middle">스페이스</span>
			</a>
				<ul id="pages" class="sidebar-dropdown list-unstyled collapse ">
					<li style="padding: 10px; height: 40px;" class="sidebar-link"><a
						class="sidebar-link" href="#"
						style="text-decoration: none; color: #fff; display: block;">스페이스
							만들기</a></li>
					<li style="padding: 10px; height: 40px;" class="sidebar-link"><a
						class="sidebar-link" href="#"
						style="text-decoration: none; color: #fff; display: block;">스페이스
							만들기</a></li>
					<li style="padding: 10px; height: 40px;" class="sidebar-link"><a
						class="sidebar-link" href="#"
						style="text-decoration: none; color: #fff; display: block;">스페이스
							만들기</a></li>
					<li style="padding: 10px; height: 40px;" class="sidebar-link"><a
						class="sidebar-link" href="#"
						style="text-decoration: none; color: #fff; display: block;">스페이스
							만들기</a></li>

				</ul></li>

			<!--  -->



			<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
				class="fas fa-caret-up"></i>업그레이드
			</li>
			<!---새창 오픈-->
			<!--  <a href="community.html" target="_blank" style="list-style:none; text-decoration: none; color: #fff;"> -->
			<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
				class="fas fa-comment"></i>커뮤니티
			</li>


			<li id="navli">&nbsp;&nbsp;<i id="navli_icon" class="fas fa-cog"></i>설정
			</li>
			<li id="navli">&nbsp;&nbsp;<i id="navli_icon"
				class="far fa-question-circle"></i>고객센터
			</li>
		</ul>
	</div>
</div>





