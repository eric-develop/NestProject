<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<div class="sidebar" data-color="orange">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
      <div class="logo" style="text-align: center; height: 4.375rem; padding-top: 15px;">
        <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal"
            	style="width: 100%; border: none; margin-top: 10px; color: darknavy; font-size: 14px;">
			    비즈니스 등록
		</button> -->
		<div class="sidebar-brand-text mx-3">
			<img src="/nest/resources/images/nest_wlogo.png" id="center-image" alt="스프링로고" style="width: 150px; height: auto;">
		</div>
      </div>
      <div class="sidebar-wrapper" id="sidebar-wrapper">
      <c:if test="${empty bmAdmin }">
      <a class="btn btn-primary" data-toggle="modal" data-target="#myModal"
            	style="width: 100%; border: none; margin-top: 20px; color: darknavy; 
            		   font-size: 17px; color: #fff; margin-bottom: 0;">
			    비즈니스 등록
		</a>
		</c:if>
		<c:if test="${!empty bmAdmin }">
      	<a class="btn btn-primary" data-toggle="modal" data-target="#myModal"
            	style="width: 100%; border: none; margin-top: 20px; 
            		   font-size: 17px; color: #fff; margin-bottom: 0;">
			    ${ bizName }
		</a>
		</c:if>
        <ul class="nav">
          <li class="active ">
            <a href="${pageContext.request.contextPath}/member/memberSummary.do">
              <i class="now-ui-icons users_single-02"></i>
              <p style="font-size: 14px;">사용자</p>
            </a>
            <ul class="btn-primary">
            	<a href="${pageContext.request.contextPath}/member/memberSummary.do">
            	<p style="color: #FFFFFF; font-size: 12px; 
            		padding-left: 14%; margin-top: 10px;">요약</p>
            	</a>
            </ul>
            <ul class="btn-primary">
            	<a href="${pageContext.request.contextPath}/member/memberInvite.do">
            	<p style="color: #FFFFFF; font-size: 12px; 
            		padding-left: 14%;">사용자 추가</p>
            	</a>
            </ul>
            <ul class="btn-primary">
            	<a href="${pageContext.request.contextPath}/member/memberManage.do">
            	<p style="color: #FFFFFF; font-size: 12px; 
            		padding-left: 14%;">사용자 관리</p>
            	</a>
            </ul>
          </li>
          <li class="active ">
            <a href="./dashboard.html">
              <i class="now-ui-icons design_app"></i>
              <p style="font-size: 14px;">콘텐츠</p>
            </a>
            <ul class="btn-primary">
            	<a href="${pageContext.request.contextPath}/space/spaceManage.do">
            	<p style="color: #FFFFFF; font-size: 12px; 
            		padding-left: 14%; margin-top: 10px;">스페이스</p>
            	</a>
            </ul>
            <ul class="btn-primary">
            	<a href="#">
            	<p style="color: #FFFFFF; font-size: 12px; 
            		padding-left: 14%;">노트북</p>
            	</a>
            </ul>
            <ul class="btn-primary">
            	<a href="#">
            	<p style="color: #FFFFFF; font-size: 12px; 
            		padding-left: 14%;">노트</p>
            	</a>
            </ul>
            <ul class="btn-primary">
            	<a href="#">
            	<p style="color: #FFFFFF; font-size: 12px; 
            		padding-left: 14%;">태그</p>
            	</a>
            </ul>
            <ul class="btn-primary">
            	<a href="#">
            	<p style="color: #FFFFFF; font-size: 12px; 
            		padding-left: 14%;">휴지통</p>
            	</a>
            </ul>
          </li>
          <!-- <li>
            <a href="./icons.html">
              <i class="now-ui-icons education_atom"></i>
              <p>Icons</p>
            </a>
          </li>
          <li>
            <a href="./map.html">
              <i class="now-ui-icons location_map-big"></i>
              <p>Maps</p>
            </a>
          </li>
          <li>
            <a href="./notifications.html">
              <i class="now-ui-icons ui-1_bell-53"></i>
              <p>Notifications</p>
            </a>
          </li>
          
          <li>
            <a href="./tables.html">
              <i class="now-ui-icons design_bullet-list-67"></i>
              <p>Table List</p>
            </a>
          </li>
          <li>
            <a href="./typography.html">
              <i class="now-ui-icons text_caps-small"></i>
              <p>Typography</p>
            </a>
          </li>
          <li class="active-pro">
            <a href="./upgrade.html">
              <i class="now-ui-icons arrows-1_cloud-download-93"></i>
              <p>Upgrade to PRO</p>
            </a>
          </li> -->
        </ul>
      </div>
    </div>