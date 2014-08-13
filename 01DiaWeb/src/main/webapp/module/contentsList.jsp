<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="/dist/ico/favicon.png">

<title>DIA ENGLISH</title>

<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom styles-->
<link href="/custom/css/custom2.css" rel="stylesheet">


</head>

<body>

	<!-- header & 메뉴바  -->

	<!-- Main jumbotron for a primary marketing message or call to action -->

	<div class="container">
		<div class="basic-container">

			<!--여기부터 시작  -->
			<div class="row">
				<div class="col-sm-2">
					<h2>
						<span class="label label-warning">매일학습 목록 </span>
					</h2>
				</div>
			</div>

			<!-- 컨텐츠 테이블 -->
			<table class="table table-hover" id="conListTab">
				<thead id="conListTH">
					<tr>
						<td>no</td>
						<td>contents title</td>
					</tr>
				</thead>

				<tbody id="conListBody">
					<tr>
						<c:set var="i" value="0" />
						<c:forEach var="con" items="${conList}">
							<tr>
								<c:set var="i" value="${ i+1 }" />
								<div class="col-sm-3">
									<td>${i}</td>
								</div>

								<div class="col-sm-4">
									<td>
										<a href="/writing.do?conIndex=${con.conIndex}&modOrder=1">${con.conTitle}</a>
									</td>
								</div>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>
			
		<!-- footer -->	
			
		<!-- basic-container 여기부터 끝  -->
		</div>
	</div>
	<!-- /container -->


	<!--  ================================================== -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/dist/js/bootstrap.min.js"></script>


</body>
</html>
