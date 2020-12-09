<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_search_form</title>
<style>
	#items >div  {
		display : inline-block;
		width : 190px;
		height : 200px;
		border : 1px solid #ccc;
		padding : 5px;
		box-shadow : 2px 2px 3px #999;
		border-radius : 12px;
		margin-right : 7px;
	}
	
	.emp > div:first-child{
		color : #00f;
		border-bottom : 1px dotted #555;
	}	
	
	.emp > div:nth-child(2){
		font-weight : bolder;
	}
</style>
</head>
<body>
<div id='emp_search_form'>
	<h2>사원조회</h2>
	<form name='frm' method='post' id='frm'>
		<label>검색어를 입력하세요 </label>
		<input type='text' name='findStr' size='30' placeholder ='성명, 이메일, 연락처로 검색' />
		<input type='button' value='검색' id='btnFind'/>
	</form>
	<hr/>
	<!-- 실행된 값을 표시 -->
	<div id='items'></div>
</div>
<script>
$('#btnFind').on('click', function(){
	let param = $('#frm').serialize();  //form태그안에있는 정보들을 직렬화(p=v & p=v)
	let req = new XMLHttpRequest(); //중요한부분

	//1 오픈
	req.open('get', './ajax/emp_search.jsp?' + param); //get타입으로 요청, **에게 자료요청 (get타입은 ?문자열형태라 간단함)

	//2 상태값체크
	req.onreadystatechange=function(){
		//console.log(req.status + "," + req.readyState);
		
		//200 : 정상요청(송신) & 4 : 응답이 정상적으로 왔다(수신)
		if(req.status==200 && req.readyState==4){
			$('#items').html(req.responseText); //응답정보를 text형태로 갖고와서 그 값을 items영역에 html로 표시해달라
		}
	}

	//3 전송
	req.send();
})
</script>
</body>
</html>