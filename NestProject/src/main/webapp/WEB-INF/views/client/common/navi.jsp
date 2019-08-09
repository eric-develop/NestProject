<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<head>
<style>
.popupLayer {
	position: relative;
	display: none;
	background-color: #ffffff;
	border: solid 1px #d0d0d0;
	width: 340px;
	height: 80%;
	z-index: 1;
	padding: 10px 0px 10px 10px;
	height: 700px;
	margin-top: 10px;
}

.popupLayer div {
	position: relative;
	top: 5px;
	right: 5px;
}

#selfimg {
	width: 60px;
	height: 60px;
	margin: 20px;
	background: #ababab;
	float: left;
	display: inline-block;
}

#msgname {
	font-weight: 700px;
	font-size: 14px;
	float: left;
	padding-top: 60px;
}

#myself {
	border-bottom: 1px solid #d0d0d0;
	width: 100%;
	margin: 0 auto;
	height: 120px;
	display: block;
}

#count_friend_div {
	width: 80%;
	float: right;
	display: block;
	margin-bottom: 10px;
}

#count_friend_div span {
	float: right;
}

#count_friend {
	font-weight: 600;
	font-size: 14px;
	color: #ababab;
	padding: 0;
	display: inline-block;
	float: left;
	margin-bottom: 10px;
}

#friend {
	border-bottom: 1px solid #d0d0d0;
	width: 100%;
	height: 80px;
	float: left;
}

#friend_img {
	width: 50px;
	height: 50px;
	margin: 10px 10px 10px 20px;
	background: #d0d0d0;
	float: left;
	display: inline-block;
}

#msg_serch {
	width: 100%;
	border-top: 1px solid #d0d0d0;
	margin: 0 auto;
	padding: 5px;
}

#msg_friend_name {
	font-weight: 700;
	font-size: 16px;
	
	width:100%;
	
}
#msg_friend_name2{
	font-weight: 400;
	font-size: 16px;
	height:100%;
	padding-top:20px;
	width:100%;
	
}

#msg_parent {
	height: 80%;
	overflow: auto;
}

#friend
:last-child
{
border
:
none;
}
#msg_parent2
{
display
:
none;
}
#msg_text
{
display
:
inline-block;
/* float: right; */
text-align
:
center;
font-size
:
10px;
padding-left
:
20px;
margin
:
0
auto;
padding-top
:
45px;
}
#msg_date
{
display
:
inline-block;
float
:
right;
font-size
:
10px;
}
@media ( min-width : 1200px) {
	#navlinone1 {
		display: none;
	}
	#msg_list {
		height: 90px;
		border-bottom: #d0d0d0 1px solid;
	}
}

@media ( min-width : 300px) and (max-width: 1199.98px) {
	#sc1 {
		display: inline-block;
		height: 40px;
	}
	#msg_list {
		height: 90px;
		border-bottom: #d0d0d0 1px solid;
		width: 100%;
	}#drop_1{
	padding-top:30px;
	}

#friend:last-child {
	border: none;
}

#msg_parent2 {
	display: none;
}


#msg_date {
	display: inline-block;
	float: right;
	font-size: 10px;
}
	}
@media
(
min-width
:
1200px)
{
#navlinone1
{
display
:
none;
}
#msg_list
{
height
:
90px;
border-bottom
:
#d0d0d0
1px
solid;
}
}
@media (min-width:300px) and (max-width:1199.98px){
#sc1{display:inline-block;
height:40px;
}#naii{
float: left;


}#usericon {
		padding: 10px;
		padding-top: 10px;
		float:left;
		display: inline-block;
	}
}
</style>
</head>

<div class="left_navi" style="padding: 0%;" class="sidebar-sticky ">

	<div id="usericon">
		<div id="person_img_div" class="rounded-circle"></div>



		<span style="font-size: 16px; color: #fff;">user </span>

		<div id="left_nav_msg_div">
			<a href="#" class="imgSelect" class="blind_view"> <i
				id="left_nav_msg" class="fas fa-comment"></i> <span
				id="left_nav_msg_count"><b>2</b></span></a>
			<!--  메세지 갯수 필요 -->
		</div>
<!-- .popupLayer (채팅창)	 -->



		<div class="popupLayer">

			<div style="height: 40px;">
				<span id="count_friend">친구&nbsp;&nbsp;20</span>
				<!-- 사람 아이콘 -->
				<i class="fas fa-user" id="msg_main" onclick="msg_main();"
					style="display: inline-block; padding: 0px 10px; color: rgb(255, 119, 0); font-size: 20px;"></i>

				<!-- 메세지 아이콘 -->
				<i style="color: rgb(255, 119, 0); padding: 0px 10px;"
					id="msg_parent_change_icon" onclick="msg_parent_change_icon();"
					class="fas fa-comment"></i> <span onClick="closeLayer(this)"
					style="cursor: pointer; font-size: 1.5em; float: right;" title="닫기"><i
					class="fas fa-times" style="padding-right: 10px;"></i></span>

			</div>

			<div id="msg_serch">
				<input style="width: 100%; font-size: 14px; padding: 5px 10px;"
					type="text" placeholder="이름으로 검색">
			</div>
			<!-- -메세지 아이콘 클릭시 채팅 리스트로 이동- -->

			<div id="msg_parent2">
				<div id="msg_list">

					<div id="friend_img" class="rounded-circle"></div>
					<div id="msg_group" style="display: inline-block;">
						<span id="msg_friend_name">user</span>
						<p id="msg_text"
							style="padding: 0; display: inline-block; text-align: left; font-size: 12px; width: 100%; margin: 0 auto;">더운데
							수고 많으시네요.</p>
					</div>
					<p id="msg_date">2019/08/09</p>
				</div>


			</div>




			<!-- --채팅 메인 	 -->

			<!-- --- -->
			<div id="msg_parent">
				<div id="myself">
					<p style="margin: 0; padding-left: 10px">
						내 프로필 <i class="fas fa-heart"></i>
					</p>
					<div id="selfimg" class="rounded-circle"></div>
					<span id="msgname">user</span>
				</div>


				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<p id="msg_friend_name2">user</p>
				</div>
				
				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<p id="msg_friend_name2">user</p>
				</div>
				
				<div id="friend">

					<div id="friend_img" class="rounded-circle"></div>
					<p id="msg_friend_name2">user</p>
				</div>

			</div>
		</div>
		<!-- //폼 레이어  -->

	</div>





	<div id="logoutdiv">
		<button id="note_loginbtn" type="button" class="btn-sm">로그아웃</button>

	</div>
	<div id="noticenav">

		<ul id="navul">
			<li id="newnote" class="navlinone">&nbsp;&nbsp;<i
				class="fas fa-plus-circle "
				style="font-size: 20px; color: #fff; margin-right: 10px;"> </i>새노트
			</li>
			<!-- - 모바일에서 메뉴 네비 드롭다운 -->
			<li class="nav-item dropdown" id="naii"><a id="drop_1"
				style="color: #fff; float: left;" class="nav-link dropdown-toggle"
				data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
				aria-expanded="false"><i id="navli_icon" class="fas fa-cog"></i>노트</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#"><i id="navli_icon"
						class="fas fa-caret-up"> </i>모든노트</a> <a class="dropdown-item"
						href="#"><i id="navli_icon" class="fas fa-cog"></i> 노트북</a> <a
						class="dropdown-item" href="#"> <i id="navli_icon"
						class=" fas fa-plus-circle"></i>새노트
					</a>
				</div></li>
		</ul>

	</div>

	<div id="noticenav">

		<ul id="navul">

			<!-- - 모바일에서 메뉴 네비 드롭다운 -->
			<li class="nav-item dropdown"><a id="drop_1"
				style="color: #fff; float: left;" class="nav-link dropdown-toggle"
				data-toggle="dropdown" href="#" role="button" aria-haspopup="true"
				aria-expanded="false">설정</a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#"><i id="navli_icon"
						class="fas fa-cog"> </i>설정</a> <a class="dropdown-item" href="#"><i
						id="navli_icon" class="fas fa-caret-up "></i> 업그레이드</a> <a
						class="dropdown-item" href="#"> <i id="navli_icon"
						class="far fa-question-circle"></i>고객센터
					</a>
				</div></li>
		</ul>

	</div>

	<div>


		<ul style="padding: 0;">
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
<!-- ------ 채팅 div 보이기 -->
<script>
	function closeLayer(obj) {
		$(obj).parent().parent().hide();
	}

	$(function() {

		/* 클릭 클릭시 클릭을 클릭한 위치 근처에 레이어가 나타난다. */
		$('.imgSelect').click(function(e) {
			var sWidth = window.innerWidth;
			var sHeight = window.innerHeight;

			var oWidth = $('.popupLayer').width();
			var oHeight = $('.popupLayer').height();

			// 레이어가 나타날 위치를 셋팅한다.
			var divLeft = e.clientX + 10;
			var divTop = e.clientY + 5;

			// 레이어가 화면 크기를 벗어나면 위치를 바꾸어 배치한다.
			if (divLeft + oWidth > sWidth)
				divLeft -= oWidth;
			if (divTop + oHeight > sHeight)
				divTop -= oHeight;

			// 레이어 위치를 바꾸었더니 상단기준점(0,0) 밖으로 벗어난다면 상단기준점(0,0)에 배치하자.
			if (divLeft < 0)
				divLeft = 0;
			if (divTop < 0)
				divTop = 0;

			$('.popupLayer').css({
				"top" : divTop,
				"left" : divLeft,
				"z-index" : 1,
				"position" : "absolute"
			}).show();
		});

	});
</script>
<!-- ------ 채팅 div 보이기 -->
<script>
function msg_parent_change_icon() {

    jQuery("#msg_parent").hide();
    jQuery("#msg_parent2").show();

}
function msg_main() {

    jQuery("#msg_parent2").hide();
    jQuery("#msg_parent").show();

}

	
</script>



