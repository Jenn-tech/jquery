<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select</title>
<link rel = 'stylesheet' type = 'text/css' href ='./css/guestbook.css'>
<script scr = './js/guestbook.js'></script>
</head>
<body>
<div id = 'guestbook'>
	<h2>방명록</h2>
	<!-- 검색바 -->
	<form name='frm_gb' id = 'frm_gb' method='post'>
		<input type ='search' name = 'findStr' size = '30' placeholder = '작성자나 내용으로 검색' />
		<input type = 'button' value = '검색' id = 'btnFind' />
	</form>
	
	<%--방명록 list --%>
	<div id = 'list'>
		<% for(int i = 0; i<10; i++) { %>
		<div id = 'item'>
			<label>작성자</label>
			<output class ='mid'>김재현</output>
			<label>작성일자</label>
			<output class ='mdate'>2020-12-15 13:50</output>
			<br>
			<textarea rows ="5" cols='80'></textarea>
			<br>
			<div class='btns'>
				<input type = 'button' value = '수정' id = 'btnUpdate'/>
				<input type = 'button' value = '삭제' id = 'btnDelete'/>
			</div>
				<% } %>
		</div>
	
	</div>
</div>
</body>
</html>