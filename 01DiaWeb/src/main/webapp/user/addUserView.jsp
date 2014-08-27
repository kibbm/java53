<%@ page contentType="text/html; charset=EUC-KR" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

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

<!-- Bootstrap validation core CSS -->
<link rel="stylesheet" href="/dist/css/bootstrapValidator.min.css"/>

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
						<span class="label label-warning">ȸ������ </span>
					</h3>
				</div>
			</div>
			
			<form class="form-horizontal" id="addUserForm" method="post" action="addUser.do">
			
				<div class="form-group">
					<label for="inputUserId" class="control-label col-xs-2">���̵�</label>
					<div class="row col-lg-10">
						<div class="col-lg-4">
							<input type="text" class="form-control" name="userId" id="userId" 
							  placeholder="ID">
						</div>
						<div class="col-lg-6">
							 <span id="idCheckResult">&nbsp</span>
						</div>
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
						placeholder="Password">
					</div>
				</div>
				
				<div class="form-group">
					<label for="email" class="control-label col-xs-2">�̸���(Email)</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="email" id="email" placeholder="Email">
					</div>
				</div>

				<div class="form-group">
					<label for="userName" class="control-label col-xs-2">�̸�</label>
					<div class="col-lg-4">
						<input type="text" class="form-control" name="userName" id="userName" placeholder="Name">
					</div>
				</div>

				<div class="form-group">
					<label for="birthdate" class="control-label col-xs-2">�������</label>
					<div class="col-lg-2" id="datepickerBox">
						<input type="text" class="form-control" name="birthdate" id="birthdate"	placeholder="����-��-��">
					</div>
				</div>

				<div class="form-group">
					<label for="phone" class="control-label col-xs-2">��ȭ��ȣ</label>
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
						</div>					
					</div>

				<div class="form-group">
					<label for="addr" class="control-label col-xs-2">�ּ�</label>
					<div class="col-lg-8">
						<input type="text" class="form-control" name="addr" id="addr" placeholder="�ּ�">
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
	
	<hr>
	<!-- /container -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Load jQuery and bootstrap datepicker scripts -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>	
	<script src="/dist/js/bootstrap.min.js"></script>
	<script src="/dist/js/bootstrap-datepicker.js"></script>
	
	<!--Bootstrap validation -->
	<script src="/dist/js/bootstrapValidator.min.js"></script>
	
	 <script>
	  $(function() {
	    $( "#birthdate" ).datepicker({ 
	    	dateFormat: "yy-mm-dd" });
	  });
	  </script>
	 
	 <!--Bootstrap validation -->
	<script>
	$(document).ready(function() {
		 $('#header').load('../header2.jsp');
	
		 $('#addUserForm :text')[0].focus();
		 
		  $('#addUserForm').bootstrapValidator({
    	        fields: {
    	            userId: {
    	                validators: {
    	                    notEmpty: {
    	                        message: '���̵� �Է����ּ���'
    	                    }
    	                }
    	            },
    	            password: {
                        validators: {
                            notEmpty: {                   
                                message: '��й�ȣ�� �Է����ּ���'
                            },
                            stringLength: {
                                min: 6,
                                message: '��й�ȣ�� 6�� �̻� �Է����ּ���'
                      	  }
                        }
                    },
                    confirm_password: {
                        validators: {
                            notEmpty: {
                                message: '��й�ȣ�� �ٽ� �ѹ� �Է����ּ���'
                            },
                            identical: {
                                field: 'password',
                                message: '��й�ȣ�� ��ġ���� �ʽ��ϴ�'
                            }
                        }
                    },
                    email: {
                        validators: {
                            notEmpty: {
                                message: '�̸��� �ּҸ� �Է����ּ���'
                            },
                            emailAddress: {
                                message: '�̸��� ������ �ƴմϴ�'
                            }
                        }
                    },
                    userName: {
    	                validators: {
    	                    notEmpty: {
    	                        message: '�̸��� �Է����ּ���'
    	                    }
    	                }
    	            },
    	            birthdate: {
    	            	validators: {
    	            		   notEmpty: {
       	                        message: '��������� �Է����ּ���'
    	            	   }
    	            	}
    	            }
    	        }//end fields
    	     });//end bootstrapValidator 
    	});		
	</script> 
	
	 <!-- idDuplicationCheck -->
	<script> 
	$('#userId').keyup(function() {
	 	var userId = $('#userId').val();
	 	
	 	if(userId=="" ){
	 		$('#idCheckResult').html("");
	 	} else if (userId.length < 3) {
	 		$('#idCheckResult').html("3�� �̻����� �Է��� �ּ���");
	 		$('#idCheckResult').css("color","#b94a48");
	 		
	 	} else if (userId.length >10) {
	 		$('#idCheckResult').html("10�� �̳��� �Է��� �ּ���");
	 		$('#idCheckResult').css("color","#b94a48");
	 	}  else {
	 
		    $.ajax({	   
		
		    	url: "/idcheck.do",
		    	type:"POST",
		        dataType: "json",
		        data: {"userId": userId},
		    	contentType:  "application/x-www-form-urlencoded; charset=UTF-8", 	
	        	success: function(result){
	            	if (result== 0) {
	            		$('#idCheckResult').html("��� ������ ���̵��Դϴ�");
	            		$('#idCheckResult').css("color","#468847");
	        		} else {
	        			$('#idCheckResult').html("����� �� ���� ���̵��Դϴ�");
	            		$('#idCheckResult').css("color","#b94a48");
	        		}
	        	},
	        	error: function(){
					alert('�α��� ���� �� ���� �߻�!');
				}
		    });//ajax 
	 	}
	});//keyup
	</script>
	</body>
	</html>