<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emp_search_form_xml</title>
<style>
	#items >div  {
		display : inline-block;
		width : 200px;
		height : 150px;
		padding : 15px;
		box-sizing : border-box;
		box-shadow : 2px 2px 3px #999;
		border-radius : 9px;
		background-color:#fee;
		margin-bottom: 20px;
		margin-right:7px;
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
	<h2>사원조회(XML)</h2>
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
	req.open('get', './ajax/emp_search_xml.jsp?' + param); //get타입으로 요청, **에게 자료요청 (get타입은 ?문자열형태라 간단함)

	//2 상태값체크
	req.onreadystatechange=function(){
		//console.log(req.status + "," + req.readyState);
		
		//200 : 정상요청(송신) & 4 : 응답이 정상적으로 왔다(수신)
		if(req.status==200 && req.readyState==4){
			let xml = req.responseXML; //xml로 읽어들일경우 text읽어들이면 인식을 못하기때문에 responseText를 responseXML로 바꿔준다 이를 임의의변수 xml로 저장
			let emps = xml.getElementsByTagName("emp");//emp태그들을 배열로 넘겨받음
			let result = '';

			for(var i=0; i<emps.length; i++){
				var emp = emps.item(i);
				var id = emp.getElementsByTagName("id").item(0).firstChild.nodeValue; //items안에 있는 첫번째태그안의 문자열
				var name = emp.getElementsByTagName("name").item(0).firstChild.nodeValue; //items안에 있는 첫번째태그안의 문자열
				var email= emp.getElementsByTagName("email").item(0).firstChild.nodeValue; //items안에 있는 첫번째태그안의 문자열
				var phone = emp.getElementsByTagName("phone").item(0).firstChild.nodeValue; //items안에 있는 첫번째태그안의 문자열
				var salary = emp.getElementsByTagName("salary").item(0).firstChild.nodeValue; //items안에 있는 첫번째태그안의 문자열

				result += "<div class = 'emp'>"
					+ "<div>" + id + "</div>"
					+ "<div>" + name + "</div>"
					+ "<div>" + email + "</div>"
					+ "<div>" + phone + "</div>"
					+ "<div>" + salary + "</div>"
					+ "</div>";
				}
			
			$('#items').html(result);  //외부 XML파서를 사용하지 않는 경우
		}
	}

	//3 전송
	req.send();
})
</script>
</body>
</html>