<%@page import="spring.domain.User"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%
	User vo=(User)session.getAttribute("user");
	String level="";
	if(vo != null) {
		level=vo.getLevel();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="dist/ico/favicon.png">

<title>회원정보조회</title>

<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet" href="/dist/css/custom2.css">

</head>

<body>

<div class="container">
	<div id="header"></div>
</div>

	<!-- Main jumbotron for a primary marketing message or call to action -->

		<div class="container">	
		<div class="getUser-container">
			<div class="row">
				<div class="col-sm-3 col-md-offset-1">
					<h3>
						<span class="label label-warning">내 정보보기 </span>
					</h3>
				</div>
			</div>

		<form class="form-horizontal" id="getUserForm">
			<table class="table table-striped" id="getUserTable">
				<thead>
					<tr>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td id="title">아이디</td>
						<td>${user.userId}</td>
					</tr>
					<tr>
						<td id="title">이메일</td>
						<td>${user.email}</td>
					</tr>
					<tr>
						<td id="title">이름</td>
						<td>${user.userName}</td>
					</tr>
					<tr>
						<td id="title">전화번호</td>
						<td>${user.phone}</td>
					</tr>
					<tr>
						<td id="title">주소</td>
						<td>${user.addr}</td>
					</tr>
				</tbody>
			</table>
			</form>
			
			<div>
				<button type="button" class="btn btn-primary"><a href="/index.html">
				<font color="white">확인</font></a></button>
				<a href="/updateUserView.do?userId=${user.userId }" class="btn btn-primary">정보수정</a>
				<a href="/updateLeaveUserView.do?userId=${user.userId }" class="btn btn-primary">회원탈퇴</a>
			</div>
			</div>
			
		</div>
		
		
	<!-- /container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Load jQuery and bootstrap datepicker scripts -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script src="/dist/js/bootstrap.min.js"></script>

	<script>
		$(document).ready(function(){
			$('#header').load('../header.jsp');
		});
	</script>
</body>
</html>