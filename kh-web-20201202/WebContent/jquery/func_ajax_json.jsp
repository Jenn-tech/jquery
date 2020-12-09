<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>func_ajax</title>
</head>
<body>
<div id = 'func_ajax'>
	<h2>AJAX in jQuery을 사용한 구구단(JSON)</h2>
	<form name='frm' method='POST' id='frm'>
		<label>단수를 입력하세요 : </label>
		<input type ='text' size='4' name ='dan' value ='t'/>
		<input type = 'button' value = '구구단실행' id = 'btnRun'/>
	
	</form>
	
	<div id='result'></div>
</div>
<script>
$('#btnRun').on('click', function(){
	let param = $('#frm').serialize();
	$.ajax({    //파라미터를 맵구조로 전달받음
		type : 'GET',
		url  : './jquery/gugudan_json.jsp',
		data : param,

		dataType : 'json',
		success  : function(json, status){  //receiveData : 수신데이타, status : 상태확인하는 부수적인 작업
			//$('#result').append(receiveData); 계속 추가 되는것 
			var temp ='';
 			for(var i=0; i<json.length ; i++){
				temp += json[i] + '<br/>';
 	 			}
 			$('#result').html(temp);
		 },
		error    : function(xhr, status, error){
			alert(status);
		 }
			
	}); 
});
</script>
</body>
</html>












