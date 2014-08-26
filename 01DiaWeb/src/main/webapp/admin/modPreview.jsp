<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom styles-->
<link href="/custom/css/custom2.css" rel="stylesheet">
</head>
<body>


	<!-- Main container -->

	<div class="container">
		<div class="basic-container">

			<!-- Writing  -->
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
					<div class="col-sm-6" id="writing" name=modType>${modType}</div>
				</h4>
			</div>
			<br>

			<div class="row" id="wrtArea">
				<input type="text" class="form-control">
			</div>
			<br> <hr>



		</div>
	</div>


	<!--  ================================================== -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/dist/js/bootstrap.min.js"></script>

	<!-- module JS -->
	<script>
		$(document).ready(function() {

			var list = ${returnWrt}

			console.log(list);

			$("#title").append(list.title);

			$("#writing").append(list.quiz);

		});
	</script>	
</body>
</html>