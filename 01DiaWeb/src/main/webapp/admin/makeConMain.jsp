<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="shortcut icon" href="/dist/ico/favicon.png">

<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/dist/css/custom2.css" rel="stylesheet">


</head>


<body>
	<!-- main navbar -->
	<jsp:include page="../common/navBar.jsp"/>

	<div class="container">
		<div class="basic-container">

			<div class="row" style="margin-bottom: 20px;">
				<h2>
					<span class="label label-success">컨텐츠 만들기</span>
					<small>&nbsp; "관리자"님의 컨텐츠 만들기 페이지 입니다.</small>
				</h2>
			</div>

			<!-- 컨텐츠 만들기 메인 페이지 :: 만들어 놓은 컨텐츠 리스트 보이기  -->

			<!-- 컨텐츠 테이블 -->
			<table class="table table-hover" id="conListTab">
				<thead id="conListTH">
					<tr>
						<td>no</td>
						<td>contents title</td>
						<td>contents level</td>
					</tr>
				</thead>

				<tbody id="conListBody">
					<tr>
						<c:set var="i" value="0" />
						<c:forEach var="con" items="${conList}">
							<tr id="conRow">
								<c:set var="i" value="${ i+1 }" />
								<div class="col-sm-3">
									<td>${i}</td>
								</div>

								<div class="col-sm-4">
									<td><a
										href="/writing.do?conNo=${con.conNo}&modOrder=1">${con.conTitle}</a>
									</td>
								</div>
								
								<div class="col-sm-3">
									<td>${con.conLevel}</td>
								</div>

								<div class="col-sm-4">
									<td>
										<button class="btn btn-default" id="update"><span class="glyphicon glyphicon-edit"></span>&nbsp;수정</button>
										<button class="btn btn-default"  name="delBtn" onClick="javascript:delMod(this);"><span class="glyphicon glyphicon-remove"></span>&nbsp;삭제</button>
									</td>
								</div>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>

			<!-- 컨텐츠 만들기 버튼  -->
			<hr>
			<div class="col-sm-offset-9 col-sm-1">
				<a href="/makeConView.do">
					<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span>&nbsp;컨텐츠 만들기</button>
				</a>
			</div>

		</div>
		<!-- basic-container 여기부터 끝  -->
	</div>

	<hr>

	<footer>
	<p>&copy; Company 2013</p>
	</footer>
	</div>
	<!-- /container -->


	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

	<!-- bootstrap -->
	<script src="/dist/js/bootstrap.min.js"></script>

	<!-- SlidesJS Required: Link to jQuery -->
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>


	<!-- SlidesJS Required: Link to jquery.slides.js -->
	<script src="/dist/js/jquery.slides.min.js"></script>

	<!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
	<script>
		$(function() {
			$('#slides').slidesjs({
				width : 940,
				height : 528,
				play : {
					active : true,
					auto : true,
					interval : 4000,
					swap : true
				}
			});
		});
	</script>
	
	<script>
	function delMod(object){
		var index = $("#conListBody #conRow [name=delBtn]").index(object);
		$("#conListBody #conRow").eq(index).remove();			
	}	
	</script>



</body>
</html>