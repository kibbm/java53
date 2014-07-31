<%@ page contentType="text/html;charset=euc-kr" %>
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

</head>

<body>

	<!-- header & 메뉴바  -->	

	<!-- Main jumbotron for a primary marketing message or call to action -->

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

			<!-- Example row of columns -->
			<div class="row">
				<div class="col-sm-8" id="word-container">
				<div>
					<ul id="sensegroup_ul"></ul>
				</div>
				</div>
			</div>

			<div class="row" id="recBtn">
				<div class="col-sm-2">
					<input type="button" class="btn btn-default btn-lg"
						id="btn" value="start">
					<a href="/DiaProject/roleplay.do">
					<input type="hidden" class="btn btn-default btn-lg"
						id="next" value="next">
					</a>
					
				</div>
			</div>


		<!-- footer -->	
		</div>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="dist/js/bootstrap.min.js"></script>

	<!-- SlidesJS Required: Link to jQuery -->
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<!-- End SlidesJS Required -->

	<!-- SlidesJS Required: Link to jquery.slides.js -->
	<script src="dist/js/jquery.slides.min.js"></script>
	<!-- End SlidesJS Required -->

	<!-- SlidesJS Required: Initialize SlidesJS with a jQuery doc ready -->
	<script>
	$(document).ready(function(){
		
		
		var list = ${returnSensegroup}/* ${returnList} */;
		console.log(list);
		$("#title").append(list.title);
		
		for(var i=0; i<list.quiz.length; i++){
			ew = list.quiz[i].enword;
			$("#sensegroup_ul").append("<li>"+ew+"</li>");

			 //문장을 ' '을 파싱하여 +기호로 대체.
			/* var enword = list.quiz[i].enword;
			var chg = enword.split(" ");
			for(var a=0; a<chg.length; a++){
				chg
			}
			console.log(enwordchg);  */
			
			
			
			//http://tts-api.com/tts.mp3?q=such+a+feelings+coming+over+me 로 바뀌어야함.(띄어쓰기-> +)
			$("#word-container").append("<audio id="+list.quiz[i].enword+" src='http://tts-api.com/tts.mp3?q="+list.quiz[i].enmp3+"'>");
		};
	
		var k=0;
		$("#btn").click(function(){
			
			var list_li = $("#sensegroup_ul li");
			console.log(list_li);
			var	myAudio=document.getElementById(list.quiz[k].enmp3);
			
			for(var j=0; j<list_li.length;j++){
			    $("#sensegroup_ul li:eq("+j+")").css('font-size', '0em');
		    };
		    
		    $("#sensegroup_ul li").css('list-style-type', 'none');
		    $("#sensegroup_ul").css({'padding-left':'0','text-align':'center'});
		    $("#sensegroup_ul li:eq("+k+")").animate({fontSize:"2em"},"slow");
			myAudio.play();	//단어가 아니라 작문이니까...	
		    
			if(k == (list_li.length-1)){
				$("#btn").attr({type:"hidden"});
				$("#next").attr({type:"button"});
			}
			
			k++;
			
		});
	});
	</script>
	<!-- End SlidesJS Required -->
</body>
</html>
