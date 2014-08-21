<%@ page contentType="text/html; charset=EUC-KR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="dist/ico/favicon.png">

<title>회원가입</title>

<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0-wip/css/bootstrap.min.css">

<!-- Custom styles for this template -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet" href="/dist/css/custom2.css">

<!-- Datepicker -->
<link rel="stylesheet" href="/dist/css/datepicker.css">

</head>

<body>

	<div class="container">
		<div id="header"></div>
	</div>

	<!-- Main jumbotron for a primary marketing message or call to action -->


	<div class="container">	
		<div class="addUser-container">
			<div class="row">
				<div class="col-sm-3 col-md-offset-1">
					<h3>
						<span class="label label-warning">회원가입 </span>
					</h3>
				</div>
			</div>
			
			<form class="form-horizontal" id="addUserForm" method="post" action="addUser.do">
			
				<div class="form-group">
					<label for="inputUserId" class="control-label col-xs-2">아이디</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="userId" id="userId" 
						  placeholder="ID"><span id="sp1"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="password" class="control-label col-xs-2">비밀번호</label>
					<div class="col-lg-4">
						<input type="password" class="form-control" name="password" id="password"  
						placeholder="Password">
					</div>
				</div>

				<div class="form-group">
					<label for="password" class="control-label col-xs-2">비밀번호확인</label>
					<div class="col-lg-4">
						<input type="password" class="form-control" name="confirm_password" id="confirm_password" 
						placeholder="Password"><span id="sp2"></span>
					</div>
				</div>
				
				<div class="form-group">
					<label for="email" class="control-label col-xs-2">이메일(Email)</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="email" id="email" placeholder="Email">
						<span id="sp3"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="userName" class="control-label col-xs-2">이름</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="userName" id="userName" placeholder="Name">
						<span id="sp4"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="birthdate" class="control-label col-xs-2">생년월일</label>
					<div class="col-lg-2" id="datepickerBox">
						<input type="text" class="form-control" name="birthdate" id="birthdate"	placeholder="생년/월/일">
						<span id="sp5" style="padding:20px]"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="phone" class="control-label col-xs-2">전화번호</label>
					<div class="clearfix visible-xs"></div>
					<div class="row col-lg-10">
  						<div class="col-md-2">
						<select class="form-control" name="phone1" id="phone1" >
							 <option value="010" >010</option>
							<option value="011" >011</option>
							<option value="016" >016</option>
							<option value="018" >018</option>
							<option value="019" >019</option>
						</select> 
						</div>
						
						<div class="col-xs-1" style="width:5px"> - </div>
																
						 <div class=" col-md-2">
						    <input type="text" class="form-control" name="phone2" id="phone2"> 						
						  </div>
					
						<div class="col-xs-1" style="width:5px"> - </div>
							  
						  <div class="col-md-2">
						    <input type="text" class="form-control" name="phone3" id="phone3"> 
						  </div>
						  <span id="sp6"></span>
						</div>									
					</div>

				<div class="form-group">
					<label for="addr" class="control-label col-xs-2">주소</label>
					<div class="col-lg-8">
						<input type="text" class="form-control" name="addr" id="addr" placeholder="주소">
						<span id="sp7"></span>
					</div>
				</div>

				<div class="form-group">
					<input type="submit" value="회원가입" />
					<input type="reset" value="취소" />
				</div>
				
			</form>
			<!-- form -->
			<!-- content -->
		</div>
	</div>

	<div class="container">
		<div id="footer"></div>
	</div>
	<!-- /container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Load jQuery and bootstrap datepicker scripts -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>	
	<script src="/dist/js/bootstrap.min.js"></script>
	<script src="/dist/js/bootstrap-datepicker.js"></script>
<!-- 	<script 
		src="/dist/js/jquery-validate.min.js"></script>
	 -->
	<script 
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
	
	 <script>
	  $(function() {
	    $( "#birthdate" ).datepicker({ 
	    	dateFormat: "yy-mm-dd" });
	  });
	  </script>
	  
	 <script>
	 $(document).ready(function() {
		 $('#addUserForm :text')[0].focus();
	 });
	 </script> 
	 
	<script>
	  $('#addUserForm').validate({
		  rules: {
			  userId: {
				  required: true,
				  remote: "users.action",
				  userId: true
			  },
			  password: {
				  required: true,
				  rangelength:[8, 16]
			  },
			  confirm_password: {
				  required: true,
				  equalTo: '#password',
			  },
			  email: {
				required: true,
				email: true
			  },
			  userName: {
				  required: true,
				  userName: true
			   },	  
			  birthdate: {
					  required: true,
					  birthdate: true
				   }  	  
		  }, //end rules
		  
		  messages: {
			  userId: {
				  required: "아이디를 입력해주세요",
				  onkeyup: "사용할 수 없는 아이디입니다",
				  remote: "이미 등록된 아이디입니다"
			  },
			  password: {
				  required: "비밀번호를 입력해주세요",
				  rangelength: "비밀번호의 길이는 8글자 이상 16글자 이하여야 합니다"
			  },
			  confirm_password: {
				  required: "비밀번호를 재입력해주세요",
				  equalTo: "비밀번호가 일치하지 않습니다"
			  },
			  email: {
				  required: "이메일을 입력해주세요",
				  email: "메일주소를 올바르게 입력해주세요"
			  },
			  userName: {
				required: "이름을 입력해주세요"  
			  },
			  birthdate: {
				required: "생일을 입력해주세요"  
			  }
		  },//end messages
		     success: "valid",
		     submitHandler: function() { alert("Submitted!") }
/* 		  submitHandler: function() {
				alert("회원가입이 완료되었습니다!")
			},
		  success: function(element) {
		  } */
	  });//validate
	  </script>
	
	<script>
	$(document).ready(function(){
		$('#header').load('../header.jsp');
		$('#footer').load('../footer.jsp');
		});
	</script>
	
	</body>
	</html>