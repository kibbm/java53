$(document).ready(function(){
	$('#btnLogin').on('click', function(event){
		event.preventDefault();
		if ($('#userId').val().length == 0 ||
				$('#password').val().length == 0) {
			alert('아이디와 암호를 입력해주세요.');
			return;
		}
		
		$.ajax('login.ajax', {
			type: 'POST',
			dataType: 'json', /*서버에서 보내는 데이터의 형식 지정 */
			data: { /* 서버쪽으로 보내는 데이터 */
				userId: $('#userId').val(),
				password: $('#password').val()
			},
			success: function(jsonObj){
				console.log(jsonObj);
				var result = jsonObj.ajaxResult;
				if (result.status == "ok" && result.data == "success") {
					location.href="../main.html";
				} else {
					alert('아이디 또는 암호가 맞지 않습니다.');
				}
			},
			error: function(xhr, status, errorThrown){
				alert('로그인 실행 중 오류 발생!');
				console.log(status);
				console.log(errorThrown);
			}
		});
	});
});


















