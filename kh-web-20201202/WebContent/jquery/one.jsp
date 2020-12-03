<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>one</title>
<style>
	#one > #result {
		border : 1px solid #44f;
		width: 300px;
		height : 120px;
		text-align : center;
		line-height: 120px; 
	}
	#one > #btnSend{
		width : 70px;
		height : 30px;
	}
	.btn_none{visibility : hidden;}
</style>
</head>
<body>
<div id='one'>
	<div id='result'>송금버튼을 클릭하시면 송금됩니다.</div>
	<input type='button' value='송금' id ='btnSend'/>
	<div>아아</div>
</div>
<script>
	let cnt = 0; //전송횟수
	$('#btnSend').click(function(){
		if(cnt==1) return false;  //클릭이라는 이벤트 중지, 빠져나가니까 밑에부분 실행x
		cnt++;
		$('#result').html(cnt+ "회 송금됨.");
		$(this).attr('class', 'btn_none');
		})
	/* 더 직관적
	$('#btnSend').click(function(){
		cnt++;
		$('#result').html(cnt + "회 송금됨.");
		$(this).attr('disabled', 'disabled');
		})
	

	$('#btnSend').one('click', function(){
		cnt++;
		$('#result').html(cnt + "회 송금됨.");
		})
	*/
</script>
</body>
</html>