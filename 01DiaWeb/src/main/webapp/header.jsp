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
							<li><a href="#">DIA English �Ұ�</a></li>
							<li><a href="#">DIA Ŀ��ŧ�� �ȳ�</a></li>
							<li><a href="#">DIA APP �ȳ�</a></li>
						</ul></li>
						
					<li><a href="#contact">�н�����</a></li>
					
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Ŀ�´�Ƽ <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">��������</a></li>
							<li><a href="#">�����Խ���</a></li>
							<li><a href="#">Q&A</a></li>
						</ul></li>
						
					<!-- admin �� ��쿡�� ���̴� �޴� -->
					<c:if test="${user.userId == 'admin'}">
					<!-- <li><a href="/makeConMain.do">������������</a></li> -->
					<li><a href="/makeConMain.do">�����������</a></li>
					</c:if>
				</ul>
				
				<div class="navbar-form navbar-right">
				<!-- ��α��� ȸ�� �޴�-->
					 <c:if test="${ empty user }">
					 <form id="loginform"  class="form-inline" role="form" method="post" action="/login.do">
					<div class="form-group">
						<input type="text" name="userId" id="userId" placeholder="Id" class="form-control">
					</div>
					<div class="form-group">
						<input type="password" name="password"  id="password" placeholder="Password" class="form-control">
					</div>
						<input type="submit" id="btnLogin" class="btn btn-primary" value="�α���" />
						<button type="button" class="btn btn-primary">
						<a href="/addUserView.do" id="signin"><font color="white">ȸ������</font></a>
					</button>
				</form>
				</c:if>
				
				<!-- �α��� ȸ�� �޴� -->
				 <c:if test="${ ! empty user }">
				 <form  class="form-inline" role="form" method="post" action="/logout.do">
				 <div class="form-group">
						<p><font color="white">ȯ���մϴ�. ${user.userId }��</font></p>
					</div>
				 	<input type="submit" id="btnLogout" class="btn btn-primary" value="�α׾ƿ�" />
				 	<button type="button" class="btn btn-primary">
						<a href="/getUser.do" id="getUser"><font color="white">����������</font></a>
					</button>
					</form>
		          </c:if>
				</div>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>
