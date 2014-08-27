<%@page import="spring.domain.User"%>
<%@ page contentType="text/html;charset=euc-kr" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	User vo=(User)session.getAttribute("user");
	String level="";
	if(vo != null) {
		level=vo.getLevel();
	}
%>

	<!-- main navbar -->
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="index.html">DIA ENGLISH</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="#">About Us</a></li>
				
					<!--<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">About <b class="caret"></b></a>
						<!-- <ul class="dropdown-menu">
							<li><a href="#">DIA English 소개</a></li>
						</ul> -->
						
					<li><a href="appEx.html">매일학습</a></li>
					
<!-- 					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">커뮤니티 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">Q&A</a></li>
						</ul></li>
						 -->
						 
					<!-- admin 인 경우에만 보이는 메뉴 -->
					<c:if test="${user.userId == 'admin'}">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">관리자페이지 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/makeConMain.do">컨텐츠만들기</a></li>
							<li><a href="user/mastertoDetail.html">회원관리</a></li>
						</ul></li>				
					</c:if>
				</ul>
				

