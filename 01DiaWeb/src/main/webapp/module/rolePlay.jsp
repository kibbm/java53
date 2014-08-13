<%@ page contentType="text/html;charset=euc-kr" %>
<!DOCTYPE html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="/dist/ico/favicon.png">

<title>DIA English</title>

<!-- Bootstrap core CSS -->
<link href="/dist/css/bootstrap.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/dist/css/jumbotron.css" rel="stylesheet">

<!-- Custom styles-->
<link href="/custom/css/custom2.css" rel="stylesheet">

</head>

<body>
	<!-- header & 메뉴바  -->

	<!-- Main container -->

	<div class="container">
		<div class="basic-container">
			<div class="row">
				<div class="col-sm-3">
					<h3>
						<span class="label label-warning">TED:: Day01 </span>
					</h3>
				</div>
			</div>

			<div class="row">
				<div class="col-sm-2">
					<h4>
						<span class="label label-primary" id="title"></span>
					</h4>
				</div>
				<h4>
					<div class="col-sm-4" id="rubric"></div>
				</h4>
			</div>

			<!-- Example row of columns -->
			<div class="row">
				<div class="col-sm-6" id="word-container">
				<div>
					<ul id="words_ul"></ul>
				</div>
				</div>
			</div>

			<div class="row" id="recBtn">
				<div class="col-sm-2">
					<input type="button" class="btn btn-default btn-lg"
						id="btn" value="start">
				</div>
			</div>
			
			<!-- next 다음버튼 -->
			<div class="row" id="nextBtn">
				<div class="col-sm-3">
					<a href="/writingRect.do?conIndex=${conIndex}&modOrder=1"> <input type="hidden"
						class="btn btn-default btn-lg" id="next" value="next">
					</a>
				</div>
			</div>

		</div>
	</div>
	<!-- /container -->


	<!-- ================================================== -->

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="/dist/js/bootstrap.min.js"></script>


	<!-- module JS -->
	<script>
	$(document).ready(function(){
		
		var rolePlay = ${returnRolePlay};
		console.log(rolePlay);
		$("#title").append(rolePlay.title);
		
		$("#rubric").append(rolePlay.rubric);
		
		for(var i=0; i<rolePlay.quiz.length; i++){
			ew = rolePlay.quiz[i].enword;
			enmp3 = rolePlay.quiz[i].enmp3;
			$("#words_ul").append("<li>"+ew+"</li>");
			$("#word-container").append("<audio id="+ew+" src='http://tts-api.com/tts.mp3?q="+ew+"'>");
		};
	
		var k=0;
		$("#btn").click(function(){
			
			var rolePlay_li = $("#words_ul li");
			console.log(rolePlay_li);
			var	myAudio=document.getElementById(rolePlay.quiz[k].enmp3);
			
			for(var j=0; j<rolePlay_li.length; j++){
			    $("#words_ul li:eq("+j+")").css('font-size', '0em');
		    };
		    
		    $("#words_ul li").css('list-style-type', 'none');
		    $("#words_ul").css({'padding-left':'0','text-align':'center'});
		    $("#words_ul li:eq("+k+")").animate({fontSize:"2em"},"slow");
			/*  myAudio.play(); */		  
		    	    		
			if(k == (rolePlay_li.length-1)){
				$("#btn").attr({type:"hidden"});
				$("#next").attr({type:"button"});
			}
			k++;
		});
	});
	</script>

</body>
</html>
