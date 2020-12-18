<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리(view)</title> <!-- 상세보기 -->
<link rel = 'stylesheet' type = 'text/css' href='./css/member.css'>

</head>
<body>
	<div id = 'member'>
		<h2>회원관리</h2>
		<form name= 'frm_member' method = 'POST' class= 'view'>
			<label>아이디</label>
			<input type = 'text' name= 'mid' /><br>
			<label>성명</label>
			<input type = 'text' name= 'name'/><br>
			<label>이메일</label>
			<input type = 'email' name = 'email' size = '50'/><br>
			<label>연락처</label>
			<input type = 'text' name = 'phone' /><br>
			<label>우편번호</label>
			<input type = 'text' name = 'zipcode' /><br>
			<label>주소</label>
			<input type = 'text' name = 'address' size = '50' /><br>
			<label></label>
			<img src = 'http://placehold.it/200x140' />
			<hr>
			
			<div class = 'btns'>
				<input type = 'button' value = '수정' id = 'btnModify' /> <!-- insert의 수정과 비교하기위해 Modify로 설정 -->
				<input type = 'button' value = '삭제' id = 'btnDelete' />
				<input type = 'button' value = '목록' id = 'btnSelect' />
				
			
			</div>
			
		</form>


	</div>
</body>
</html>