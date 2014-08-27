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
							<li><a href="#">DIA English �Ұ�</a></li>
						</ul> -->
						
					<li><a href="appEx.html">�����н�</a></li>
					
<!-- 					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Ŀ�´�Ƽ <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">��������</a></li>
							<li><a href="#">�����Խ���</a></li>
							<li><a href="#">Q&A</a></li>
						</ul></li>
						 -->
						 
					<!-- admin �� ��쿡�� ���̴� �޴� -->
					<c:if test="${user.userId == 'admin'}">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">������������ <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="/makeConMain.do">�����������</a></li>
							<li><a href="user/mastertoDetail.html">ȸ������</a></li>
						</ul></li>				
					</c:if>
				</ul>
				

