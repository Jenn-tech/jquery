<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>manipulation</title>
</head>
<body>
<div id='main'>
	<div id='target'>TARGET</div>
	
	<div id='btn_zone'>
		<input type='button' value='WRAP' id='btnWrap' onclick='abc(this)'/>
		<input type='button' value='APPEND' id='btnAppend' />
		<input type='button' value='PREPEND' id='btnPrepend' />
	</div>
</div>
<script>
//버튼 3개에 각각 click event 처리
//1) 첫번째 방법(onclick태그)
	function abc(button) {
	//console.log(button.value);
	var wrap = "<lable><input type='checkbox'>확인</lable>";
	$('#main > #target').wrap(wrap);
	}

//2) 두번째 방법(제이쿼리)
	
	var btnAppend = $('#btnAppend')[0];
	btnAppend.onclick = function() {
		//console.log($(this).val());
	var wrap = "<br/><lable><input type='checkbox'>확인</lable>";
	for(var i=0; i<5; i++){
	$('#main > #target').append(wrap);
		}
	}


//3) 세번째 방법(자바스크립트)
	var btnPrepend = document.getElementById('btnPrepend');
	btnPrepend.onclick = function(){ 
	//console.log(btnPrepend.value);
	var wrap = "<lable><input type='checkbox'>확인</lable>";
	$('#main > #target').prepend(wrap);
		}
</script>
</body>
</html>