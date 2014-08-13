

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
		}else if(option_value==3){
			$("#accordion").append(words);	
		}

		$( "#accordion"  ).accordion( "refresh" );
		
					
	}/* addMod()  */

