<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="dist/ico/favicon.png">

<title>Jumbotron Template for Bootstrap</title>

<!-- Bootstrap core CSS -->
<link href="dist/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="dist/css/jumbotron.css" rel="stylesheet">

<!-- SlidesJS Optional: If you'd like to use this design -->
<link href="dist/css/slide.css" rel="stylesheet">

</head>

<body>

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
					<li class="active"><a href="main.html">Home</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">About <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">DIA English 소개</a></li>
							<li><a href="#">DIA 커리큘럼 안내</a></li>
							<li><a href="#">DIA APP 안내</a></li>
						</ul></li>
					<li><a href="#contact">학습원리</a></li>
					<li><a href="dailyWriting01.html">매일훈련</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">커뮤니티 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">Q&A</a></li>
						</ul></li>
					<li><a href="dailyWriting01.html">관리자페이지</a></li>
				</ul>
				<div class="navbar-form navbar-right">
					<button type="button" class="btn btn-success">로그아웃</button>
					<button type="button" class="btn btn-success">내정보</button>
				</div>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>

	<!-- Main jumbotron for a primary marketing message or call to action -->
	<div class="jumbotron">
		<div class="container">
			<div id="slides">
				<img src="dist/images/example-slide-1.jpg"
					alt="Photo by: Missy S Link: http://www.flickr.com/photos/listenmissy/5087404401/">
				<img src="dist/images/example-slide-2.jpg"
					alt="Photo by: Daniel Parks Link: http://www.flickr.com/photos/parksdh/5227623068/">
				<img src="dist/images/example-slide-3.jpg"
					alt="Photo by: Mike Ranweiler Link: http://www.flickr.com/photos/27874907@N04/4833059991/">
				<img src="dist/images/example-slide-4.jpg"
					alt="Photo by: Stuart SeegerLink: http://www.flickr.com/photos/stuseeger/97577796/">
			</div>
		</div>
	</div>

	<div class="container">
		<!-- Example row of columns -->
		<div class="row">
			<div class="col-lg-4">
				<h2>학습원리</h2>
				<img src="dist/images/example-slide-1.jpg"
					alt="Photo by: Missy S Link: http://www.flickr.com/photos/listenmissy/5087404401/"
					style="max-width: 100%; height: auto;">
			</div>
			<div class="col-lg-4">
				<h2>매일훈련</h2>
				<img src="dist/images/example-slide-2.jpg"
					alt="Photo by: Missy S Link: http://www.flickr.com/photos/listenmissy/5087404401/"
					style="max-width: 100%; height: auto;">
			</div>
			<div class="col-lg-4">
				<h2>커뮤니티</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
				<p>
					<a class="btn btn-default" href="#">View details &raquo;</a>
				</p>
			</div>
		</div>

		<hr>

		<footer>
			<p>&copy; Company 2013</p>
		</footer>
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
	<!-- End SlidesJS Required -->
</body>
</html>
