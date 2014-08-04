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

<!--  jQuery -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">



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

			<!--writing녹음시 지시문  -->
			<div class="row">
				<h4>
					<div class="col-sm-6" id="subRubric"></div>
				</h4>
			</div>		
			<hr>
			
			<!-- Example row of columns -->
			<div class="row">
				<h4>
					<div class="col-sm-6" id="writing"></div>
				</h4>
			</div>
			<br>


			<div class="row" id="wrtArea">
				<input type="text" class="form-control" value="나는 행복하다.">
			</div>
			<br>
			

			<!-- 학습종료 팝업 :: jQuery  -->

			<!-- bootstrap alert -->
			<button class="my_popup_open btn btn-default btn-lg">확인</button>
			
			<div id="my_popup" class="well">
				<h4>학습을 종료하시겠습니까?</h4>
				<a href="/01DiaWeb/conList.do"> 
				<input type="button"
					class="btn btn-default" value="종료">
				</a>
				<button class="my_popup_close btn btn-default">취소</button>
			
			</div>		
			
			<!-- footer -->
		</div>
	</div>
	<!-- /container -->



	<!-- ==================================================  -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	
	<!-- Bootstrap core JavaScript  -->
	<script src="dist/js/bootstrap.min.js"></script>
	
	<!-- jQuery  -->
	<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
	<script src="http://code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

	<script src="jQuery/jquery.popupoverlay.js"></script>
	
	<!-- jQuery  -->
	<script>
		$(document).ready(function() {

			var list = ${returnWrt}

			console.log(list);
			subRubric
			$("#title").append(list.subTitle);
			$("#subRubric").append(list.subRubric);
			$("#writing").append(list.quiz);

		});
	
	</script>

  <script>
    $(document).ready(function() {

      // Initialize the plugin
      $('#my_popup').popup();

    });
  </script>


</body>
</html>
