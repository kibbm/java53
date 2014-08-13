<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<link rel="shortcut icon" href="/dist/ico/favicon.png">

<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="/custom/css/custom2.css" rel="stylesheet">


</head>


<body>
	<!-- main navbar -->
	<jsp:include page="../common/navBar.jsp"/>

	<div class="container">
		<div class="basic-container">

			<div class="row" style="margin-bottom: 20px;">
				<h2>
					<span class="label label-success">������ �����</span>
					<small>&nbsp; "������"���� ������ ����� ������ �Դϴ�.</small>
				</h2>
			</div>

			<!-- ������ ����� ���� ������ :: ����� ���� ������ ����Ʈ ���̱�  -->

			<!-- ������ ���̺� -->
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
										href="/writing.do?conIndex=${con.conIndex}&modOrder=1">${con.conTitle}</a>
									</td>
								</div>
								
								<div class="col-sm-3">
									<td>${con.conLevel}</td>
								</div>

								<div class="col-sm-4">
									<td>
										<button class="btn btn-default" id="update"><span class="glyphicon glyphicon-edit"></span>&nbsp;����</button>
										<button class="btn btn-default"  name="delBtn" onClick="javascript:delMod(this);"><span class="glyphicon glyphicon-remove"></span>&nbsp;����</button>
									</td>
								</div>
							</tr>
						</c:forEach>
					</tr>
				</tbody>
			</table>

			<!-- ������ ����� ��ư  -->
			<hr>
			<div class="col-sm-offset-9 col-sm-1">
				<a href="../admin/makeCon.jsp">
					<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-plus"></span>&nbsp;������ �����</button>
				</a>
			</div>

		</div>
		<!-- basic-container ������� ��  -->
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