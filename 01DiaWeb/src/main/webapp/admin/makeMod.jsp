<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="shortcut icon" href="/dist/ico/favicon.png">


<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">


<!-- jumbotron -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- jQuery accordion -->
<link href="/jQuery/css/jquery-ui.css" rel="stylesheet" >
<link href="/jQuery/css/docs.min.css" rel="stylesheet">

<!-- Custom styles-->
<link href="/dist/css/custom2.css" rel="stylesheet">

<!-- sample 파일업로드 -->
<link href="/jasny-bootstrap/css/jasny-bootstrap.css" rel="stylesheet">


<!-- accordion -->
<style>
 .group { zoom: 1 }
</style> 
   
</head>


<body>
	<!-- main navbar -->
	<jsp:include page="../header.jsp"/> 

<div class="container">
		<div class="make-container">

			<div class="row" style="margin-bottom: 20px; padding-left: 16px;">
				<h2>
					<span class="label label-warning">모듈 만들기</span>
				</h2>
			</div>



		<!-- 모듈유형 추가하는 form 태그 -->
		<form id="detailForm" class="form-horizontal" role="form" action="/makeMod.do">
			

			<!-- 추가 버튼 클릭시 여기에  모듈 추가됨.... -->
			<div id="accordion"></div>
	

			<!-- 모듈 추가 버튼 -->
			<div id="addline" style="padding-top: 30px;"></div>
			
			
			<div class="col-md-offset-1 row" style="padding-top: 5px;">
				<div class="col-md-4">
					<h5 style="font-weight: bold; text-align: right;">모듈 유형을 추가하세요.</h5>
				</div>
				<div class="col-md-4" style="padding-left: -50px;">
					<select class="form-control" id="modSelect">
						<option value="1">문장 작성</option>
						<option value="2">동영상</option>
						<option value="3">단어 음성 녹음</option>
						<option value="4">문장 음성 녹음</option>
					</select>
				</div>
				<button class="btn btn-default" id="addBtn" type="button">
					<span class="glyphicon glyphicon-plus"></span>&nbsp;추가
				</button>
			</div>
			<br><br>


			<div class="row">
				<div class="col-md-offset-4 col-md-2">
					<button id="btnSubmit" class="btn btn-default" type="submit">
					<span class="glyphicon glyphicon-check"></span>&nbsp;확인</button>
				</div>
				<!-- <div class="col-md-2">
					<button id="btnPreview" type="button" class="btn btn-default">
					<span class="glyphicon glyphicon-eye-open"></span>&nbsp;미리보기</button>
				</div> -->
			</div>
			
		</form>
			
			
			
		</div><!-- basic container -->
	</div>

	<hr>

	<footer>
	<p>&copy; Company 2013</p>
	</footer>
	</div>
	<!-- /container -->


	<!-- Placed at the end of the document so the pages load faster -->
 	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

	<!-- bootstrap -->
	<script src="/dist/js/bootstrap.js"></script>

	<!-- jQuery accordion -->
	<script src="/jQuery/js/jquery-1.10.2.js"></script>
  	<script src="/jQuery/js/jquery-ui.js"></script>
	
	<!--sample 파일업로드  -->
	<script src="/jasny-bootstrap/js/jasny-bootstrap.js"></script>

	<!-- 확인 버튼 클릭  -->
	<script src="/dist/js/make.js"></script>

	<!-- 미리보기 클릭  -->
	<script src="/dist/js/preview.js"></script>
	
<!-- accordion -->
<script>
$(function() {
    var icons = {
      header: "ui-icon-circle-arrow-e",
      activeHeader: "ui-icon-circle-arrow-s"
    };
    $( "#accordion" )
	    .accordion({
		      header: "> div > h3",
		      icons: icons,
		      collapsible: true,
		      heightStyle: "content"
		  })
	    .sortable({
	      axis: "y",
	      handle: "h3",
	      stop: function( event, ui ) {
	        ui.item.children( "h3" ).triggerHandler( "focusout" );
	
	        $( this ).accordion( "refresh" );
	      }
	    });  
    
  });
</script>

<script>
/* 확인 버튼 클릭 시 */

 $('#btnSubmit').click(function(event) {
 	event.preventDefault();
 	
	var arr=[];
	var jsonData;
	
  	$("#accordion > .group").each(function(index, element) {		
		console.log('===>', index, $(element).find('h3').text());
		
		/* writing */
		if($(element).find('h3').text() == '문장 작성×'){
			console.log('ok');
			arr[index]={order: index,
					type:$(element).find('#title').val(),
					title:$(element).find('#title').val(), 
					rubric:$(element).find('#rubric').val(), 
					quiz:$(element).find('#quiz').val(), 
					option:$("#wRec").val() };	
			console.log(arr[index]);
			
		/* video */	
		}else if($(element).find('h3').text() == '동영상×'){
			var quizVD = {
					order: index,
					type:$(element).find('#title').val(),
					title:$(element).find('#title').val(), 
					rubric:$(element).find('#rubric').val(), 
					quiz:[]					
			};
			
			$(".qvideo").each(function(index, element){
				quizVD.quiz.push($(element).text());
			});
		
			arr[index] = quizVD;
			console.log(arr[index]);
			
		/* word */	
		}else if($(element).find('h3').text() == '단어 음성 녹음×'){	
			var quizObj = {
				order: index,
				type:$(element).find('#title').val(),
				title:$(element).find('#title').val(), 
				rubric:$(element).find('#rubric').val(),
				quiz: []
			};
			
			$(".qword").each(function(index, element){
				//console.log( "=>>>", $(element).val() );
				quizObj.quiz.push($(element).val());
			});
			
			arr[index] = quizObj;		
			console.log(arr[index]);
			
		/* Sentence */	
		}else if($(element).find('h3').text() == '문장 음성 녹음×'){	
			var quizSen = {
					order: index,
					type:$(element).find('#title').val(),
					title:$(element).find('#title').val(), 
					rubric:$(element).find('#rubric').val(),
					quiz:{en:[] , ko:[], file:[]}
				};
				
				$(".qen").each(function(index, element){
					quizSen.quiz.en.push($(element).val());
				});
				
				$(".qko").each(function(index, element){
					quizSen.quiz.ko.push($(element).val());
				});
				
				$(".qfile").each(function(index, element){
					quizSen.quiz.file.push($(element).text());	
				});
				
				arr[index] = quizSen;		
				console.log(arr[index]);
		}
			
	
		jsonData = JSON.stringify(arr);
	
		return jsonData;
 		
	});
  	

  	$.ajax({
		 type: "POST",
	     url: "/makeMod.do",
	     data: {jsonData: jsonData},
	     datatype: "json",
	     success: function(result){
		    document.location.href="/makeConMain.do";  
	     	}
		});


});
</script>

	
</body>
</html>