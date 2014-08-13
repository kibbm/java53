<%@ page contentType="text/html;charset=euc-kr"%>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="/dist/ico/favicon.png">

<title>DIA English</title>

<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom styles-->
<link href="/custom/css/custom2.css" rel="stylesheet">


</head>

<body>

	<!-- header & 메뉴바  -->

	<!-- Main container -->

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

			<!-- next 다음버튼 -->
			<div class="row" id="nextBtn">
				<div class="col-sm-3">
					<a href="/words.do?conIndex=${conIndex}&modOrder=2"> <input type="button"
						class="btn btn-default btn-lg" id="next" value="next">
					</a>
				</div>
			</div>


			<!-- footer -->
		</div>
	</div>
	<!-- /container -->


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
