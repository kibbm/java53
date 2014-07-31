<%@ page contentType="text/html;charset=euc-kr"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="dist/ico/favicon.png">

<title>DIA English</title>

<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet" href="dist/css/custom2.css">


</head>

<body>

	<!-- header & ¸Þ´º¹Ù  -->

	<!-- Main jumbotron for a primary marketing message or call to action -->

	<div class="container">
		<div class="basic-container">
			<div class="row">
				<div class="col-sm-3">
					<h3>
						<span class="label label-warning">Daily Study:: Day01 </span>
					</h3>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">
					<h4>
						<span class="label label-primary" id="title"></span>
					</h4>
				</div>
			</div>

			<!-- Example row of columns -->
			<div class="row">
				<h4>
					<div class="col-sm-6" id="writing"></div>
				</h4>
			</div>
			<br>

			<div class="row" id="wrtArea">
				<input type="text" class="form-control">
			</div>
			<br>

			<div class="row" id="recBtn">
				<div class="col-sm-2">
					<a href="/DiaProject/list.do"> 
						<input type="button"
						class="btn btn-default btn-lg" id="btn" value="next">
					</a>
				</div>
			</div>


		<!-- footer -->	
		</div>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="dist/js/bootstrap.min.js"></script>

	<!-- SlidesJS Required: Link to jQuery -->
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<!-- End SlidesJS Required -->

	<!-- SlidesJS Required: Link to jquery.slides.js -->
	<script src="dist/js/jquery.slides.min.js"></script>
	<!-- End SlidesJS Required -->

	<!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
	<script>
		$(document).ready(function() {

			var list = ${returnWrt}

			console.log(list);

			$("#title").append(list.title);

			$("#writing").append(list.quiz);

		});
	</script>
	<!-- End SlidesJS Required -->


</body>
</html>
