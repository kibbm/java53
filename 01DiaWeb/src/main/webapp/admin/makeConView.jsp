<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<jsp:include page="../header.jsp"/> 

	<div class="container">
		<div class="make-container">
		
			<div class="row"  style="margin-bottom: 20px; padding-left: 16px">
				<h2>
					<span class="label label-warning">컨텐츠 만들기</span>
				</h2>
			</div>

			<form class="form-horizontal" role="form" action="/makeCon.do">
				<div class="form-group">
					<label for="conName" class="col-md-2 control-label">컨텐츠 이름</label>
					<div class="col-md-8">
						<input type="text" class="form-control" id="conName" name="conTitle"
							placeholder="예) TED 01">
					</div>
				</div>
				<div class="form-group">
					<label for="conLevel" class="col-md-2 control-label">학습레벨</label>
					<div class="col-md-8">
						<select class="form-control" id="conLevel" name="conLevel">
							<option value="lev1">Lev1</option>
							<option value="lev2">Lev2</option>
							<option value="lev3">Lev3</option>
						</select>
					</div>
				</div>
				<!-- 레벨별  컨텐츠 순서 어떻게 가지고 올 것인가? -->
				<div class="form-group">
					<label for="conOrder" class="col-md-2 control-label">컨텐츠순서</label>
					<div class="col-md-8">
						<input type="text" class="form-control" id="conOrder" name="conOrder"
							value="${conOrder}">
					</div>
				</div>

				<div class="form-group">
					<div class="col-md-offset-2 col-md-8">
						<button type="submit" class="btn btn-default">다음</button>
					</div>
				</div>
			</form>

		</div>
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

</body>
</html>