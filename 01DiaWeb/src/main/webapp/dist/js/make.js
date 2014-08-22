/* 단어 추가  함수 */

function addWord() {

	var value = $("#word").val();

	var html = '<div class="col-md-4">'
				  +'<div class="close" data-dismiss="alert">'
					 +'<input class="qword" style="width:80px; border:none; font-size: medium; " type="text" value="'+value + '">'+'&emsp;'  
				  +'<span aria-hidden="true">&times;</span>' + '</div>'
			  +'</div>';

	$("#addArea").append(html);
	$("#word").val('');

}


/* 동영상 추가  */	
function addVD(){
	var html = '<div class="form-group">'
				+'<div class="col-md-offset-2 col-md-6">'
					+'<div class="fileinput fileinput-new input-group" data-provides="fileinput">'
						+'<div class="form-control" data-trigger="fileinput">'
							+'<i class="glyphicon glyphicon-file fileinput-exists"></i>'
								+'<span class="fileinput-filename qvideo"></span>'
						+'</div>'
						+'<span class="input-group-addon btn btn-default btn-file">'
						+'<span class="fileinput-new">파일선택</span>'
						+'<span class="fileinput-exists">변경</span>'
							+'<input type="file" name="..." id="quiz">'
						+'</span>'
					+'</div>'
				+'</div>'	
					+'<button class="btn btn-default" name="delBtn" onClick="delVD(this);" type="button" style="margin-left: 5px;">'
						+'<span class="glyphicon glyphicon-remove"></span>&nbsp;삭제'
					+'</button>'
				+'</div>';

	
	$("#addVDArea").append(html);
	
}

/* 동영상 삭제  */
function delVD(object){
	var index = $("#addVDArea .form-group [name=delBtn]").index(object);
	$("#addVDArea .form-group").eq(index).remove();			
}

/*문장 추가*/
function addSen(){
	var html= '<div class="row" id="senBlock">'
				+'<label class="col-xs-1 control-label">영</label>'
				+'<div class="col-md-2">'
					+'<input type="text" class="form-control qen" id="en">'
				+'</div>'
			
				+'<label class="col-xs-1 control-label">한</label>'
				+'<div class="col-md-2" >'
					+'<input type="text" class="form-control qko" id="ko">'
				+'</div>'
			
				+'<label class="col-xs-1 control-label">mp3</label>'
			 	+'<div class="col-md-4">'
					+'<div class="fileinput fileinput-new input-group" data-provides="fileinput">'
						+'<div class="form-control" data-trigger="fileinput">'
							+'<i class="glyphicon glyphicon-file fileinput-exists"></i>'
								+'<span class="fileinput-filename qfile"></span>'
						+'</div>'
						+'<span class="input-group-addon btn btn-default btn-file">'
						+'<span class="fileinput-new">파일선택</span>'
						+'<span class="fileinput-exists">변경</span>'
							+'<input type="file" name="..." id="mp">'
						+'</span>'
					+'</div>'
				+'</div>'
				
				+'<button class="btn btn-default-b" name="delBtn" onClick="delSen(this);" type="button">'
				+'<span class="glyphicon glyphicon-remove"></span></button>'
			+'</div>';
	
	$("#senArea").append(html);
		
}


/* 문장 삭제  */
function delSen(object){
	var index = $("#senArea #senBlock [name=delBtn]").index(object);
	$("#senArea #senBlock").eq(index).remove();			
}



/* 모듈 삭제  */
function delMod(object){
	var index = $("#accordion .group [name=delBtn]").index(object);
	$("#accordion .group").eq(index).remove();			
}

/* 모듈 추가버튼 클릭 */
$('#addBtn').click(function(event){
	
	addMod();
});

		
/* 모듈 추가  */
function addMod(){
	
	var select = document.getElementById("modSelect");
	
	var option_value = select.options[select.selectedIndex].value;
	var option_text   = select.options[select.selectedIndex].text;
	
	/*writing*/
	var writing ='<div class="group">'
					+'<h3>'+ option_text
					+'<button class="close" name="delBtn" onClick="javascript:delMod(this);" type="button" style="margin-left:450px;">'
					+'<span aria-hidden="true">&times;</span><span class="sr-only">Close</span></span></button>'						
					+'</h3>'
					+'<div>'	
						+'<div class="form-group">'
							+'<label for="conLevel" class="col-md-2 control-label">모듈이름</label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" id="title" name="modName" value="Writing">'
							+'</div>'
						+'</div>'
						+'<div class="form-group">'
							+'<label for="conLevel" class="col-md-2 control-label">지시문</label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" id="rubric" name="modRubric">'
							+'</div>'
						+'</div>'
						+'<div class="form-group">'
							+'<label for="conLevel" class="col-md-2 control-label">문제</label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" id="quiz" name="modQuiz">'
							+'</div>'
						+'</div>'
						
						+'<div class="form-group">'
							+'<label for="conLevel" class="col-md-2 control-label">녹음 선택</label>'
							+'<div class="col-md-4">'
								+'<div class="checkbox">'
									+'<label> <input type="checkbox" id="wRec" name="wRec" value="yes">'
										+'음성 녹음 템플렛 추가'
									+'</label>'
								+'</div>'
							+'</div>'
						+'</div>'	
					+'</div></div>';

	/*video*/
	var video ='<div class="group">'
					+'<h3>'+ option_text
					+'<button class="close" name="delBtn" onClick="delMod(this);" type="button" style="margin-left: 450px;">'
					+'<span aria-hidden="true">&times;</span><span class="sr-only">Close</span></span></button>'
					+'</h3>'	
					+'<div>'
						+'<div class="form-group">'
							+'<label for="conLevel" class="col-md-2 control-label">모듈이름</label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" id="title" value="Video">'
							+'</div>'
						+'</div>'
						+'<div class="form-group">'
							+'<label for="conLevel" class="col-md-2 control-label">지시문</label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" id="rubric">'
							+'</div>'
						+'</div>'
						
						+'<div class="form-group">'
							+'<label for="conLevel" class="col-md-2 control-label">동영상</label>'
							+'<div class="col-md-4">'
								+'<button class="btn btn-default" id="addVDBtn" onClick="addVD();" type="button">'
									+'<span class="glyphicon glyphicon-plus"></span>&nbsp;추가</button>'
							+'</div>'
						+'</div>'
						
						+'<div class="form-group">'
						+'<div class="col-md-offset-2 col-md-6">'
							+'<div class="fileinput fileinput-new input-group" data-provides="fileinput">'
								+'<div class="form-control" data-trigger="fileinput">'
									+'<i class="glyphicon glyphicon-file fileinput-exists"></i>'
										+'<span class="fileinput-filename qvideo"></span>'
								+'</div>'
								+'<span class="input-group-addon btn btn-default btn-file">'
								+'<span class="fileinput-new">파일선택</span>'
								+'<span class="fileinput-exists">변경</span>'
									+'<input type="file" name="..." id="quiz">'
								+'</span>'
							+'</div>'
						+'</div>'	
							+'<a href="#" class="btn btn-default" style="margin-left: 5px;" data-dismiss="fileinput">'
							+'<span class="glyphicon glyphicon-remove"></span>&nbsp;삭제</a>'
						+'</div>'						
						+'<div id="addVDArea"></div>'							
					+'</div></div>';
										
			
	

	
			
	/*words*/
	var words ='<div class="group">'
					+'<h3>'+ option_text
					+'<button class="close" name="delBtn" onClick="delMod(this);" type="button" style="margin-left: 450px;">'
					+'<span aria-hidden="true">&times;</span><span class="sr-only">Close</span></span></button>'
					+'</h3>'	
					+'<div>'
						+'<div class="form-group">'
							+'<label for="conLevel" class="col-md-2 control-label">모듈이름</label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" id="title" value="Words">'
							+'</div>'
						+'</div>'
						+'<div class="form-group">'
							+'<label for="conLevel" class="col-md-2 control-label">지시문</label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control" id="rubric">'
							+'</div>'
						+'</div>'
						+'<div class="form-group">'
							+'<label class="col-md-2 control-label">단어추가</label>'
							+'<div class="col-md-4">'
								+'<input type="text" class="form-control input-group" value="" id="word"'
									+'onKeyPress="if (event.keyCode==13){ addWord(); event.returnValue=false}">'
							+'</div>'
						+'</div>'
						+'<div id="addArea"></div>'		
					+'</div></div>';	
					
	/* sentence */
	var sentence = 	'<div class="group">'
						+'<h3>' + option_text
							+'<button class="close" name="delBtn" onClick="javascript:delMod(this);" type="button" style="margin-left: 450px;">'
								+'<span aria-hidden="true">&times;</span><span class="sr-only">Close</span></span>'
							+'</button>'
						+'</h3>'
						+'<div>'
							+'<div class="form-group">'
								+'<label class="col-md-2 control-label">모듈이름</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control" id="title" value="Sense Group">'
								+'</div>'
							+'</div>'
							+'<div class="form-group">'
								+'<label class="col-md-2 control-label">지시문</label>'
								+'<div class="col-md-4">'
									+'<input type="text" class="form-control" id="rubric">'
								+'</div>'
							+'</div>'
							
							+'<div class="form-group">'
								+'<label class="col-md-2 control-label">문장입력</label>'
								+'<div class="col-md-2">'
									+'<button class="btn btn-default" id="addSenBtn" onClick="addSen();" type="button">'
									+'<span class="glyphicon glyphicon-plus"></span>&nbsp;추가</button>'
								+'</div>'
							+'</div>'
							
							+'<div class="row" id="senBlock">'
								+'<label class="col-xs-1 control-label">영</label>'
								+'<div class="col-md-2">'
									+'<input type="text" class="form-control qen" id="en">'
								+'</div>'
							
								+'<label class="col-xs-1 control-label">한</label>'
								+'<div class="col-md-2" >'
									+'<input type="text" class="form-control qko" id="ko">'
								+'</div>'
							
								+'<label class="col-xs-1 control-label">mp3</label>'
							 	+'<div class="col-md-4">'
									+'<div class="fileinput fileinput-new input-group" data-provides="fileinput">'
										+'<div class="form-control" data-trigger="fileinput">'
											+'<i class="glyphicon glyphicon-file fileinput-exists"></i>'
												+'<span class="fileinput-filename qfile"></span>'
										+'</div>'
										+'<span class="input-group-addon btn btn-default btn-file">'
										+'<span class="fileinput-new">파일선택</span>'
										+'<span class="fileinput-exists">변경</span>'
											+'<input type="file" name="..." id="mp">'
										+'</span>'
									+'</div>'
								+'</div>'
							+'</div>'
							
							+'<div id="senArea">'
							+'</div>'							
						+'</div>'
					+'</div>';
		
				
	if(option_value==1){
		$("#accordion").append(writing);		
	}else if(option_value==2){
		$("#accordion").append(video);	
	}else if(option_value== 3){
		$("#accordion").append(words);	
	}else if (option_value== 4){
		$("#accordion").append(sentence);				
	}

	$( "#accordion"  ).accordion( "refresh" );
	
				
}/* addMod()  */
	