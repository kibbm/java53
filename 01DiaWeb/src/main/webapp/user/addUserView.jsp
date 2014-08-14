<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html; charset=EUC-KR" %>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="dist/ico/favicon.png">

<title>ȸ������</title>

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
							<li><a href="#">DIA English �Ұ�</a></li>
							<li><a href="#">DIA Ŀ��ŧ�� �ȳ�</a></li>
							<li><a href="#">DIA APP �ȳ�</a></li>
						</ul></li>
					<li><a href="#contact">�н�����</a></li>
					<li><a href="/01DiaWeb/conList.do">�����Ʒ�</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Ŀ�´�Ƽ <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">��������</a></li>
							<li><a href="#">�����Խ���</a></li>
							<li><a href="#">Q&A</a></li>
						</ul></li>
					<!-- admin �� ��쿡�� ���̴� �޴� -->
					<li><a href="/01DiaWeb/makeCon.do">������������</a></li>
				</ul>
			</div>
			<!--/.navbar-collapse -->
		</div>
	</div>

	<!-- Main jumbotron for a primary marketing message or call to action -->


	<div class="container">	
		<div class="addUser-container">
			<div class="row">
				<div class="col-sm-3 col-md-offset-1">
					<h3>
						<span class="label label-warning">ȸ������ </span>
					</h3>
				</div>
			</div>
			
			<form class="form-horizontal" id="addUserForm" method="post" action="addUser.do">
			
				<div class="form-group">
					<label for="inputUserId" class="control-label col-xs-2">���̵�</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="userId" id="userId" 
						  placeholder="ID"><span id="sp1"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="password" class="control-label col-xs-2">��й�ȣ</label>
					<div class="col-lg-4">
						<input type="password" class="form-control" name="password" id="password"  
						placeholder="Password">
					</div>
				</div>

				<div class="form-group">
					<label for="password" class="control-label col-xs-2">��й�ȣȮ��</label>
					<div class="col-lg-4">
						<input type="password" class="form-control" name="confirm_password" id="confirm_password" 
						placeholder="Password"><span id="sp2"></span>
					</div>
				</div>
				
				<div class="form-group">
					<label for="email" class="control-label col-xs-2">�̸���(Email)</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="email" id="email" placeholder="Email">
						<span id="sp3"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="userName" class="control-label col-xs-2">�̸�</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="userName" id="userName" placeholder="Name">
						<span id="sp4"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="birthdate" class="control-label col-xs-2">�������</label>
					<div class="col-lg-2" id="datepickerBox">
						<input type="text" class="form-control" name="birthdate" id="birthdate"	placeholder="����/��/��">
						<span id="sp5" style="padding:20px]"></span>
					</div>
				</div>

				<div class="form-group">
					<label for="phone" class="control-label col-xs-2">��ȭ��ȣ</label>
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
					<label for="addr" class="control-label col-xs-2">�ּ�</label>
					<div class="col-lg-8">
						<input type="text" class="form-control" name="addr" id="addr" placeholder="�ּ�">
						<span id="sp7"></span>
					</div>
				</div>

				<div class="form-group">
					<input type="submit" value="ȸ������" />
					<input type="reset" value="���" />
				</div>
				
			</form>
			<!-- form -->
			<!-- content -->
		</div>
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
	    $( "#birthdate" ).datepicker();
	    
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
				  required: "���̵� �Է����ּ���",
				  onkeyup: "����� �� ���� ���̵��Դϴ�",
				  remote: "�̹� ��ϵ� ���̵��Դϴ�"
			  },
			  password: {
				  required: "��й�ȣ�� �Է����ּ���",
				  rangelength: "��й�ȣ�� ���̴� 8���� �̻� 16���� ���Ͽ��� �մϴ�"
			  },
			  confirm_password: {
				  required: "��й�ȣ�� ���Է����ּ���",
				  equalTo: "��й�ȣ�� ��ġ���� �ʽ��ϴ�"
			  },
			  email: {
				  required: "�̸����� �Է����ּ���",
				  email: "�����ּҸ� �ùٸ��� �Է����ּ���"
			  },
			  userName: {
				required: "�̸��� �Է����ּ���"  
			  },
			  birthdate: {
				required: "������ �Է����ּ���"  
			  }
		  },//end messages
		  submitHandler: function() {
				alert("ȸ�������� �Ϸ�Ǿ����ϴ�!")
			},
		  success: function(element) {
		  }
	  });//validate
	  
	  
	  </script>
	
	
	</body>
	</html>