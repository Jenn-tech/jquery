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
		width : 150px;
		min-height : 150px;
		padding : 5px;
		box-shadow : 2px 2px 3px #999;
		border-radius : 12px;
		margin-right : 7px;
		margin-bottom:14px;
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
	<h2>사원조회(JSON)</h2>
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
	req.open('get', './ajax/emp_search_json.jsp?' + param); //get타입으로 요청, **에게 자료요청 (get타입은 ?문자열형태라 간단함)
/*
 * 만약 GET타입이 아닌 POST타입으로 한다면?
	req.open('post', './ajax/emp_search_json.jsp?' + param);	
	req.setRequestHeader('Content-type', 'application/x-www-form-urlencoded;charset=utf-8'); --헤더값을 바꿔줘야함
	req.send(parm); 

	따라서 post타입으로 전송하느니 get타입으로 전송하는 것이 편하고 단순함.
 */
	//2 상태값체크
	req.onreadystatechange=function(){
		//console.log(req.status + "," + req.readyState);
		
		//200 : 정상요청(송신) & 4 : 응답이 정상적으로 왔다(수신)
		if(req.status==200 && req.readyState==4){
			
			//**중요한부분(JSON.parse는 문자열을 object로 만들어주는명령어.전제조건: 문자열은 JSON구조로 되어있어야함 양옆의 큰따옴표를 빼줌)
			let data = JSON.parse(req.responseText); 
			let doc = '';
			for(var i=0 ; i<data.length ; i++){ //JSON ==> html
				doc += "<div class='emp'>"
					+ "<div>id :" + data[i].id +"</div>"
					+ "<div>" + data[i].name + "</div>"
					+ "<div>" + data[i].email + "</div>"
					+ "<div>" + data[i].phone + "</div>"
					+ "<div>" + data[i].salary + "</div>"
					+ "</div>";
				}
			$('#items').html(doc); //응답정보를 text형태로 갖고와서 그 값을 items영역에 html로 표시해달라(json도 text형식이라 responseText로 받음)
		}
	}

	//3 전송
	req.send();
})
</script>
</body>
</html>