<%@ page contentType="text/html; charset=euc-kr"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="/dist/ico/favicon.png">

<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet" href="/dist/css/custom2.css">

<!-- Login CSS  -->
<link rel="stylesheet" type="text/css" href="/dist/css/style.css" />

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
					<li><a href="/conList.do">매일훈련</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">커뮤니티 <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">공지사항</a></li>
							<li><a href="#">자유게시판</a></li>
							<li><a href="#">Q&A</a></li>
						</ul></li>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>

	<!-- Main jumbotron for a primary marketing message or call to action -->

	<div class="container">
		<div class="login-container">

			<section id="login-content">
				<form role="form" id="loginForm" method="post" action="/login.do">
					<div class="form-group">

						<h1>Login</h1>
					</div>
					<div class="form-group">
						<input type="text" name="userId" id="userId" placeholder="아이디" />
						<span id="sp1"></span>
					</div>
					<div class="form-group">
						<input type="password" name="password" id="password"
							placeholder="비밀번호" /> <span id="sp2"></span>
					</div>
					<div>
						<input type="submit" id="btnLogin" value="로그인" /> <br>
					</div>
					<a href="/addUserView.do">회원가입</a>
				</form>
				<!-- form -->
			</section>
			<!-- content -->

			<hr>

			<footer>
				<p>&copy; Company 2013</p>
			</footer>
		</div>
	</div>
	<!-- /container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/dist/js/bootstrap.min.js"></script>
	<script
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>

	<script>
		$("#loginForm").validate({
			rules : {
				userId : {
					required : true,
					userId : true
				},
				password : {
					required : true,
					password : true
				}
			},//end rules

			messages : {
				userId : {
					required : "아이디를 입력해주세요"
				},
				password : {
					required : "패스워드를 입력해주세요"
				}
			}
		//end message
		});//end validate
	</script>

	<script>
		$(document).ready(function() {
			$("#loginForm").submit(function() {
				var formData = $(this).serialize();
				$.post('login.do', formData, processData);
				function processData(data) {
					if (data =='pass') {
						$('#content').html('<p> 로그인이 되었습니다!</p>');
					} else {
						if (! $('#fail').length) {
							$('#content').prepend('<p id="fail"> 로그인 정보가 올바르지 않습니다. 다시 시도해 주세요.</p>');
						}
					}
				}// end processData
				return false;
			}); //end submit
		}); //end ready
	</script>
	
	<!-- End SlidesJS Required -->
</body>
</html>