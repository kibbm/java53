<%@page import="spring.domain.User"%>
<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	User vo=(User)session.getAttribute("user");
	String level="";
	if(vo != null) {
		level=vo.getLevel();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" >

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="dist/ico/favicon.png">

<title>회원정보수정</title>

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
		<div class="updateUser-container">
			<div class="row">
				<div class="col-sm-3 col-md-offset-1">
					<h3>
						<span class="label label-warning">회원정보수정</span>
					</h3>
				</div>
			</div>

		<form class="form-horizontal" id="updateUserForm" method="post" action="/updateUser.do">
			
				<div class="form-group">
					<label for="inputUserId" class="control-label col-xs-2">아이디</label>
					<div class="col-lg-4">
						<input class="form-control" name="userId" id="userId" value="${user.userId}">
					</div>
				</div>

				<div class="form-group">
					<label for="email" class="control-label col-xs-2">이메일(Email)</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="email" id="email" value="${user.email}">
						<span id="sp3"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="userName" class="control-label col-xs-2">이름</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="userName" id="userName" value="${user.userName}">
						<span id="sp4"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="birthdate" class="control-label col-xs-2">생년월일</label>
					<div class="col-lg-2" id="datepickerBox">
						<input type="text" class="form-control" name="birthdate" id="birthdate"	value="${user.birthdate}">
						<span id="sp5" style="padding:20px]"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="phone" class="control-label col-xs-2">전화번호</label>
					<div class="clearfix visible-xs"></div>
					<div class="row col-lg-10">
  						<div class="col-md-2">
						<select class="form-control" name="phone1" id="phone1" value="${user.phone1}" >
							 <option value="010" >010</option>
							<option value="011" >011</option>
							<option value="016" >016</option>
							<option value="018" >018</option>
							<option value="019" >019</option>
						</select> 
						</div>
						
						<div class="col-xs-1" style="width:5px"> - </div>
																
						 <div class=" col-md-2">
						    <input type="text" class="form-control" name="phone2" id="phone2"  value="${user.phone2}"> 						
						  </div>
					
						<div class="col-xs-1" style="width:5px"> - </div>
							  
						  <div class="col-md-2">
						    <input type="text" class="form-control" name="phone3" id="phone3"  value="${user.phone3}"> 
						  </div>
						  <span id="sp6"></span>
						</div>									
					</div>

				<div class="form-group">
					<label for="addr" class="control-label col-xs-2">주소</label>
					<div class="col-lg-8">
						<input type="text" class="form-control" name="addr" id="addr" value="${user.addr }">
						<span id="sp7"></span>
					</div>
				</div>

				<div class="form-group">
					<input type="submit" id="signup" class="btn btn-primary"  value="저장" />
					<input type="reset" class="btn btn-primary" value="취소" />
					<button type="button" class="btn btn-primary">
						<a href="/index.html"><font color="white">이전</font></a>
					</button>
				</div>
				
			</form>
			<!-- form -->
			<!-- content -->
		</div>
	</div>
	
	<hr>
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
	<script 
		src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
		
 <script>
	  $(function() {
		    $( "#birthdate" ).datepicker({ 
		    	dateFormat: "yy-mm-dd" });
		  }); 
	  </script>
		 
	<script>
	jQuery.validator.setDefaults({
		  debug: true,
		  success: "valid"
		});
	  $('#updateUserForm').validate({
		  rules: {
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
		  console.log("validation message 출력")
		
		  submitHandler: function() {
				alert("회원정보가 수정되었습니다!")
			}
		 
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