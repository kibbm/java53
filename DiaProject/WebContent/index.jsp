<%@ page contentType="text/html;charset=euc-kr" %>


<%@ page import="spring.domain.Module" %>

<html lang="en" class="demo1 no-js">
	
	<head>
			<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>jQuery Super Simple Text Rotator Demo 1: Default Settings</title>
		<meta name="description" content="Rotating text is a very simple idea where you can add more content to a text area without consuming much space by rotating an individual word with a collection of others" />
		<meta name="keywords" content="jquery text rotator, css text rotator, rotate text, inline text rotator" />
		<meta name="author" content="Author for Onextrapixel" />
		<link rel="shortcut icon" href="../file/favicon.gif"> 
		<link rel="stylesheet" type="text/css" href="css/default.css" />
		
		<!-- Edit Below -->
		<script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.js"></script>
    	<script type="text/javascript" src="js/jquery.simple-text-rotator.js"></script>
    	<link rel="stylesheet" type="text/css" href="css/style.css" />
    	<link rel="stylesheet" type="text/css" href="css/simpletextrotator.css" />
	
	</head>
	
		<body class="demo1">
		<div class="container">
			<!-- Top Navi -->
			<div class="nav-top clearfix">
				<div class="nav-social nav-icon">
					<span>
						<div class="fb-like" data-href="http://www.onextrapixel.com/2013/08/27/super-simple-text-rotator-with-almost-no-effort-required/" data-send="false" data-layout="button_count" data-width="55" data-show-faces="false"></div>
					</span>
					<span>
						<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://www.onextrapixel.com/2013/08/27/super-simple-text-rotator-with-almost-no-effort-required/" data-via="onextrapixel">&nbsp;</a>
					</span>
				</div>

			</div>

		
			<div class="main">
			  <h1><span class="rotate">asdf, asdfasfd, asdfsafdsfd</span></h1>
	    </div>
		</div><!-- Container -->
		<a href="http://localhost:8080/DiaProject/list.do">list로 가기</a>
		<a href="http://localhost:8080/DiaProject/rolePlay.do">rolePlay로 가기</a>
		
	<script type="text/javascript">
    	$(".rotate").textrotator();
  	</script>
		
	</body>
	
</html>