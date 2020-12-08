<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Begin</title>
<style>
	#result{
		width : 400px;
		height : 250px;
		background-color : #eee;
		
	}
</style>
</head>
<body>
<div id='begin'>
   <fieldset>
      <legend>Ajax의 특징</legend>
      <ul>
         <li>별도의 외부 플러그인이나 라이브러리, ActiveX와 같은 API 프로그램들이 필요 없다.</li>
         <li>브라우저 내부에 있는 자바스크립트만으로 처리 가능하다.</li>
         <li>비동기방식으로 서버와 통신하며, 브라우저의 새로고침없이 특정 영역의 내용을 동적으로 변경할 수 있다.</li>   
         <!-- 비동기 : 외부와 상관없이 내부내용 바뀔 수 있음, 동기 : 영향을 받음 -->
         <li>프로그램 방식을 Web방식에서 App방식으로 처리할 수 있다.</li>   
         <li>AJAX(Asynchronous JavaScript XML)의 약자</li>
         <li>Ajax의 가장 중추적인 역할을 하는 객체는 XMLhttpRequest 이다.</li>         
      </ul>   
   </fieldset>
   <h3>홀짝수 체크</h3>
   <p>간탄 테스트(서버의 결과를 표시해 주기 위해 전체 화면이 새로고침 되느냐 아니면 필요한 부분만 새로고침 되느냐)</p>
 
   <form name='frm' method='post'>
      <label>정수를 입력하세요</label>
      <input type='text' size='6' name='su' value = '${param.su}' />  <!-- ajax를 통해 전체페이지가 새로고침되는 현상을 피할 수 있다  -->      
       <input type='submit' value='Check' />
   </form>
   <div id='result'>
   
   
   </div>

</div>
<script>
//ajax를 통해 서버의 처리 결과를 result에 표시

	var frm = document.frm;
	frm.onsubmit = function(){  //frm submit버튼이 클릭됐을 때
	var param = "?su=" + frm.su.value;//frm태그 안에 su가 가지고 있는 value값과 문자열su더해달라
	var req = new XMLHttpRequest();  //가장 중요한 역할을 하는 XMLHttpRequest
	req.open('get', './ajax/odd_even_check.jsp' + param);//get이라는 타입으로 ##.jsp파일에 요청정보를 생성
	req.onreadystatechange = function(){  //상태값을 정의하는 function정의
		//req.status == 200 ==> 정상요청됨, req.readyState == 4 ==> 정상응답
		if(req.status == 200 && req.readyState ==4) {
			//1)ajax
			//var r = document.getElementById('result'); //result영역에 있는 값은 r로
			//r.innerHTML = req.responseText;//응답결과를 r에다 집어넣는.. r에만 담겠다

			//2)제이쿼리
			$('#result').html(req.responseText);// emp_search_for에 있는 items가됨
				}
		}
	req.send(); //요청 정보를 서버에 전송

	return false; //submit 고유의 기능을 취소 일반버튼이라면 할 필요x
	}
	
</script>
</body>
</html>