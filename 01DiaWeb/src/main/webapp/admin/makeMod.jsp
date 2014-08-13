<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="shortcut icon" href="/dist/ico/favicon.png">


<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">
<link href="/dist/css/bootstrap-theme.css" rel="stylesheet">

<!-- jumbotron -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- jQuery accordion -->
<link href="/jQuery/css/jquery-ui.css" rel="stylesheet" >
<link href="/jQuery/css/docs.min.css" rel="stylesheet">

<!-- Custom styles-->
<link href="/custom/css/custom2.css" rel="stylesheet">


<!-- sample 파일업로드 -->
<link href="/jasny-bootstrap/css/jasny-bootstrap.css" rel="stylesheet">


<!-- accordion -->
<style>
 .group { zoom: 1 }
</style> 
   
</head>


<body>
	<!-- main navbar -->
	<jsp:include page="../common/navBar.jsp"/> 

<div class="container">
		<div class="basic-container">

			<div class="row" style="margin-bottom: 20px; padding-left: 16px;">
				<h2>
					<span class="label label-success">모듈 만들기</span>
				</h2>
			</div>



			<!-- 모듈유형 추가하는 form 태그 -->
			<form class="form-horizontal" role="form" action="/makeMod.do">

				<!-- 추가 버튼 클릭시 여기에 추가됨.... -->
				<div id="accordion"></div>

<!-- 
				<div class="form-group" style="margin-left: 135px;">
					<div class="fileinput fileinput-new input-group"
						data-provides="fileinput">
						<div class="form-control" data-trigger="fileinput">
							<i class="glyphicon glyphicon-file fileinput-exists"></i> <span
								class="fileinput-filename"></span>
						</div>
						
						<span class="input-group-addon btn btn-default btn-file"> <span
							class="fileinput-new">파일선택</span> <span class="fileinput-exists">변경</span>
							
						</span>
						<a href="#" class="btn btn-default" style="margin-left: 5px;"
							data-dismiss="fileinput"> <span
							class="glyphicon glyphicon-remove"></span>&nbsp;삭제
						</a>
						
					</div>
				</div>
				
				 -->
			</form>
	
	

			<!-- 모듈 추가 버튼 -->
			<div class="col-md-offset-1 row" style="padding-top: 30px;">
				<div class="col-md-4">
					<h5 style="font-weight: bold; text-align: right;">모듈 유형을 추가하세요.</h5>
				</div>
				<div class="col-md-4" style="padding-left: -50px;">
					<select class="form-control" id="modSelect" name="modSelect">
						<option value="1">문장 작성</option>
						<option value="2">동영상</option>
						<option value="3">음성 녹음 - DB</option>
						<option value="4">음성 녹음 - 입력</option>
					</select>
				</div>
				<button class="btn btn-default" id="addBtn" type="button">
					<span class="glyphicon glyphicon-plus"></span>&nbsp;추가
				</button>
			</div>
			<br /> <br />



			<div class="form-group">			
				<div class="col-md-offset-4 col-md-8">
					<button id="btnSubmit" type="submit" class="btn btn-default">확인</button>
				</div>			
			</div>


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
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
	
	<!--sample 파일업로드  -->
	<script src="/jasny-bootstrap/js/jasny-bootstrap.js"></script>

	
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
/* 단어 추가  함수 */
function addWord() {

	var value = $("#word").val();

	var html = '<div class="col-md-4 form-group">'
			+ '<div class="close" data-dismiss="alert">' + value + '&emsp;'
			+ '<span aria-hidden="true">&times;</span>' + '</div>'
			+ '</div>';

	$("#addArea").append(html);
	$("#word").val('');

}
	
/* 확인 버튼 클릭 시 */
$('#btnSubmit').click(function(event) {
	event.preventDefault();

	$("#accordion > .group").each(function(index, element) {
		console.log('===>', index, $(element).find('h3').text());
	});

});
</script>


<script>

/*모듈 추가 및 삭제 함수*/

	/* 삭제  */
	function delMod(object){
		var index = $("#accordion .group [name=delBtn]").index(object);
		$("#accordion .group").eq(index).remove();			
	}
	
	/* 추가버튼 클릭 */
	$('#addBtn').click(function(event){
		event.preventDefault();
		
		$( "#accordion > .group" ).each(function(index, element){
			console.log('===>', index, $(element).find('h3').text());
		});
		
		addMod();
	});

			
	/* 추가  */
	function addMod(){
		
		var select = document.getElementById("modSelect");
		
		var option_value = select.options[select.selectedIndex].value;
		var option_text   = select.options[select.selectedIndex].text;
		
		/*writing*/
		var writing ='<div class="group">'
						+'<h3>모듈유형: '+ option_text
						+'<button class="btn btn-default-a" name="delBtn" onClick="javascript:delMod(this);" type="button" style="margin-left:520px;">'
						+'<span class="glyphicon glyphicon-remove"></span></button>'						
						+'</h3>'
						+'<div>'	
							+'<div class="form-group">'
								+'<label for="conLevel" class="col-md-2 control-label">모듈이름</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control" value="예)Writing">'
								+'</div>'
							+'</div>'
							+'<div class="form-group">'
								+'<label for="conLevel" class="col-md-2 control-label">지시문</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control">'
								+'</div>'
							+'</div>'
							+'<div class="form-group">'
								+'<label for="conLevel" class="col-md-2 control-label">문제</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control">'
								+'</div>'
							+'</div>'
			
							+'Option::Writing 음성 녹음 추가 여부'
							+'<div class="form-group">'
								+'<label for="conLevel" class="col-md-2 control-label">녹음 선택</label>'
								+'<div class="col-md-4">'
									+'<div class="checkbox">'
										+'<label> <input type="checkbox" value="wRec">'
											+'음성 녹음 템플렛 추가'
										+'</label>'
									+'</div>'
								+'</div>'
							+'</div>'	
						+'</div></div>';

		/*video*/
		var video ='<div class="group">'
						+'<h3> 모듈유형: '+ option_text
						+'<button class="btn btn-default-a" name="delBtn" onClick="delMod(this);" type="button" style="margin-left: 480px;">'
						+'<span class="glyphicon glyphicon-remove"></span></button>'
						+'</h3>'	
						+'<div>'
							+'<div class="form-group">'
								+'<label for="conLevel" class="col-md-2 control-label">모듈이름</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control" value="예)video">'
								+'</div>'
							+'</div>'
							+'<div class="form-group">'
								+'<label for="conLevel" class="col-md-2 control-label">지시문</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control">'
								+'</div>'
							+'</div>'
							
							+'<div class="form-group">'
								+'<label for="conLevel" class="col-md-2 control-label">동영상</label>'
								+'<div class="col-md-4">'
									+'<button class="btn btn-default" id="addVDBtn" onClick="addVD();" type="button">'
										+'<span class="glyphicon glyphicon-plus"></span>&nbsp;추가</button>'
								+'</div>'
							+'</div>'
							+'<div class="form-group" style="margin-left: 135px;">'
								+'<div class="fileinput fileinput-new input-group" data-provides="fileinput">'
									+'<div class="form-control" data-trigger="fileinput">'
										+'<i class="glyphicon glyphicon-file fileinput-exists"></i>' 
											+'<span class="fileinput-filename"></span>'
									+'</div>'
									+'<span class="input-group-addon btn btn-default btn-file">' 
									+'<span class="fileinput-new">파일선택</span>'
									+'<span class="fileinput-exists">변경</span>'
										+'<input type="file" name="...">'
									+'</span>'
									+'<a href="#" class="btn btn-default" style="margin-left: 5px;" data-dismiss="fileinput">'
										+'<span class="glyphicon glyphicon-remove"></span>&nbsp;삭제</a>'
								+'</div>'
							+'</div>'
							+'<div id="addVDArea"></div>'							
						+'</div></div>';
											
										
				
		/*words*/
		var words ='<div class="group">'
						+'<h3> 모듈유형: '+ option_text
						+'<button class="btn btn-default-a" name="delBtn" onClick="delMod(this);" type="button" style="margin-left: 480px;">'
						+'<span class="glyphicon glyphicon-remove"></span></button>'
						+'</h3>'	
						+'<div>'
							+'<div class="form-group">'
								+'<label for="conLevel" class="col-md-2 control-label">모듈이름</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control" value="예)Writing">'
								+'</div>'
							+'</div>'
							+'<div class="form-group">'
								+'<label for="conLevel" class="col-md-2 control-label">지시문</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control">'
								+'</div>'
							+'</div>'
							+'<div class="form-group">'
								+'<label class="col-md-2 control-label">단어검색</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control input-group" value="" id="word"'
										+'onKeyPress="if (event.keyCode==13){ addWord(); event.returnValue=false}">'
								+'</div>'
							+'</div>'
							+'<div id="addArea"></div>'		
						+'</div></div>';				
	
		
						
					
		if(option_value==1){
			$("#accordion").append(writing);		
		}else if(option_value==2){
			$("#accordion").append(video);	
		}else if(option_value==3){
			$("#accordion").append(words);	
		}

		$( "#accordion"  ).accordion( "refresh" );
		
					
	}/* addMod()  */
	
</script>

<script>
	/* 동영상 추가  */	
	function addVD(){
		var html = '<div class="form-group" style="margin-left:135px;">'
							+'<div class="fileinput fileinput-new input-group" data-provides="fileinput">'
								+'<div class="form-control" data-trigger="fileinput">'
									+'<i class="glyphicon glyphicon-file fileinput-exists"></i> '
									+'<span class="fileinput-filename"></span>'
								+'</div>'
								+'<span class="input-group-addon btn btn-default btn-file">'
									+'<span class="fileinput-new">파일선택</span>' 
									+'<span class="fileinput-exists">변경</span>' 
									+'<input type="file" name="...">'
								+'</span>'
								+'<button class="btn btn-default" name="delBtn" onClick="delVD(this);" type="button" style="margin-left: 5px;">'
								    +'<span class="glyphicon glyphicon-remove"></span>&nbsp;삭제</button>'
					+'</div></div>';
		
		$("#addVDArea").append(html);
		
	}
	
	/* 동영상 삭제  */
	function delVD(object){
		var index = $("#addVDArea .form-group [name=delBtn]").index(object);
		$("#addVDArea .form-group").eq(index).remove();			
	}
	
</script>
	
</body>
</html>