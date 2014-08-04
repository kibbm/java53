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

<!-- jQuery Mobile -->
<link rel="stylesheet" href="jQueryMobile/css/jquery.mobile-1.4.3.css"/>



</head>

<body>

	<!-- header & �޴���  -->

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

			<!--writing������ ���ù�  -->
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
				<input type="text" class="form-control" value="���� �ູ�ϴ�.">
			</div>
			<br>
			

			<!-- �н����� �˾� :: jQuery Mobile  -->
			<a href="#popupDialog" data-rel="popup" data-position-to="window"
				data-transition="pop"
				class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-a">
				Ȯ�� </a>

			<div data-role="popup" id="popupDialog" data-overlay-theme="a"
				data-theme="a" data-dismissible="false" style="max-width: 400px;">
				<div role="main" class="ui-content">
					<h3 class="ui-title">�����н��� �����Ͻðڽ��ϱ�?</h3>
					<a href="#"
						class="ui-btn ui-corner-all ui-shadow ui-btn-a" data-rel="back"> ��� </a> 
					<a href="/01DiaWeb/conList.do"
						class="ui-btn ui-corner-all ui-shadow ui-btn-a" data-transition="flip">����</a>
				</div>
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

	<!-- �����߰� -->
	<!-- jQuery -->
	<script src="jQuery/jquery-1.11.1.min.js"></script>
	<!-- jQuery Mobile -->
	<script src="jQueryMobile/js/jquery.mobile-1.4.3.js"></script>
	
	
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

</body>
</html>