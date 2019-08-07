<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<style>
@media ( min-width : 576px) {
	#left_navi {
		width: 100%;
		height: 70px;
		background: rgb(255, 119, 0);
		display: block;
		margin: 0 auto;
	}
	#navli {
		cursor: pointer;
		width: 90px;
		height: 50px;
		display: none;
		float: left;
		list-style: none;
	}
	#navli:hover {
		font-color: #fff;
		cursor: pointer;
	}
	#navul {
		list-style: none;
		display: block;
		text-decoration: none;
		color: #fff;
		padding: 0%;
		margin: 0;
		font-size: 14px;
		
		
	
	}
	#usericon {
		padding: 10px;
		padding-top: 10px;
		height: 30px;
		display: none;
		border-bottom: 1px solid #d5d5d5;
	}
	#logoutdiv {
		display: inline-block;
		margin: 0;
		padding: 0;
		position: relative;
	}
	#hello_user {
		color: #fff;
		padding: 20px;
		display: inline-block;
	}
	#note_loginbtn {
		width: 130px;
		height: 30px;
		margin: 20px;
	}
	#noticenav {
		display: inline-block;
		width: 500px;
		
	}
	#newnote {
		display: inline-block;
	}
	.navlinone {
		display: ;
	}
	.nav-item dropdown{
	display: inline-block;
	}
	.dropdown, .dropleft, .dropright, .dropup {
    display: inline-block;
    position: relative;
}
#dropn {
		display: inline-block;
	}
.showw{
display: none;
}
}



@media ( min-width : 1200px) {
	#left_navi {
		height: 100%;
		float: left;
		width: 240px;
		background: rgb(255, 119, 0);
		display: inline-block;
		padding-top: 20px;
		    padding: 0%;
    height: 1192px;
	}
	#navli {
    display: block;
    height: 44px;
    width: 100%;
    line-height: 50px;
    cursor: pointer;
    }
	#noticenav {
	
		display: inline-block;
		overflow: auto;
	}
	#navli:hover {
		background: #F28B30;
		font-color: #fff;
		cursor: pointer;
	}
	#navul {
		list-style: none;
		display: inline-block;
		 text-decoration: none;
		 width:240px;
		color: #fff;
		padding: 0%;
		font-size: 14px;
	}
	#usericon {
		padding: 10px;
		padding-top: 30px;
		height: 90px;
		position: relative;
		border-bottom: 1px solid #d5d5d5
	}
	#logoutdiv {
		margin-bottom: 50px;
		padding: 10px;
	}
	#hello_user {
		color: #fff;
		margin-top: 10px;
	}
	#note_loginbtn {
	    margin: 0;
		width: 100%;
		border: none;
	}
	#newnote {
		height: 60px;
		width:100%;
		display: inline-block;
		line-height: 50px;
		cursor: pointer;
	}
	#icon {
		display: none;
	}
	.modal {
		display: none;
	}
	#dropn {
		display: none;
	}
	.navlinone {
		display: none;
	}
	.sidebar-item{
	display: block;
	}
		}
}
</style>
</head>

<div id="left_navi" style="padding: 0%;" class="sidebar-sticky">

	<div id="usericon">
		<i class="far fa-user-circle" style="font-size: 50px; color: #b8b8b8"></i>



		<span style="font-size: 16px; color: #fff;">user </span>



	</div>
	<div id="logoutdiv">

		<p id="hello_user">user님 안녕하세요.</p>
		<button id="note_loginbtn" type="button" class="btn-sm">로그아웃</button>

	</div>
	<div id="noticenav">
		<ul id="navul">
			<li id="newnote" class="navlinone">&nbsp;&nbsp;<i
				class="fas fa-plus-circle"
				style="font-size: 20px; color: #fff; margin-right: 10px;"> </i>새노트
			</li>
			<!-- - 모바일에서 메뉴 네비 드롭다운 -->
			<div id="dropn">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">노트</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#"><i id="navli_icon"
							class="fas fa-sticky-note"></i>모든 노트</a> <a class="dropdown-item"
							href="#"><i id="navli_icon" class="far fa-sticky-note"></i>노트북</a>
						<a class="dropdown-item" href="#"><i
							class="fas fa-plus-circle"
							style="font-size: 20px; color: #fff; margin-right: 10px;"> </i>새노트</a></li>




				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false"><i id="navli_icon" class="fas fa-cog"></i>설정</a> </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#"><i id="navli_icon"
							class="fas fa-caret-up"></i>업그레이드</a> <a class="dropdown-item"
							href="#"><i id="navli_icon" class="fas fa-cog"></i>설정</a> <a
							class="dropdown-item" href="#"><i id="navli_icon"
							class="far fa-question-circle"></i>고객센터</a></li>
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
<li class="sidebar-item showw">
						<a href="#pages" data-toggle="collapse" class="sidebar-link collapsed">
             &nbsp;&nbsp; <i
			class="fas fa-th-large"
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

				</ul>
			</li>

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





