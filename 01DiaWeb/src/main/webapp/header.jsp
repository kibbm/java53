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
				<a class="navbar-brand" href="main.html">DIA ENGLISH</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">About <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">DIA English 소개</a></li>
							<li><a href="#">DIA 커리큘럼 안내</a></li>
							<li><a href="#">DIA APP 안내</a></li>
						</ul></li>
						
					<li><a href="#contact">학습원리</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">커뮤니티 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">Q&A</a></li>
						</ul></li>
						
					<!-- admin 인 경우에만 보이는 메뉴 -->
					<c:if test="${user.userId == 'admin'}">
					<!-- <li><a href="/makeConMain.do">관리자페이지</a></li> -->
					<li><a href="/makeConMain.do">컨텐츠만들기</a></li>
					</c:if>
				</ul>
				
				<div class="navbar-form navbar-right">
				<!-- 비로그인 회원 메뉴-->
					 <c:if test="${ empty user }">
					 <form id="loginform"  class="form-inline" role="form" method="post" action="/login.do">
					<div class="form-group">
						<input type="text" name="userId" id="userId" placeholder="Id" class="form-control">
					</div>
					<div class="form-group">
						<input type="password" name="password"  id="password" placeholder="Password" class="form-control">
					</div>
						<input type="submit" id="btnLogin" class="btn btn-primary" value="로그인" />
						<button type="button" class="btn btn-primary">
						<a href="/addUserView.do" id="signin"><font color="white">회원가입</font></a>
					</button>
				</form>
				</c:if>
				
				<!-- 로그인 회원 메뉴 -->
				 <c:if test="${ ! empty user }">
				 <form  class="form-inline" role="form" method="post" action="/logout.do">
				 <div class="form-group">
						<p><font color="white">환영합니다. ${user.userId }님</font></p>
					</div>
				 	<input type="submit" id="btnLogout" class="btn btn-primary" value="로그아웃" />
				 	<button type="button" class="btn btn-primary">
						<a href="/getUser.do" id="getUser"><font color="white">내정보보기</font></a>
					</button>
					</form>
		          </c:if>
				</div>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>
