<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginfo</title>
<script src='./js/login.js'></script>
</head>
<body>
<div id='loginfo'>
	<%
	//session.setAttribute("mid", "hong"); mid에 hong이라는 속성을 넣어줌
	//session.removeAttribute("mid"); mid의 속성 제거
	if( session.getAttribute("mid")== null){ //mid의 속성이 없으면 로그인 이전화면
	%>
		<%--로그인 이전 화면 --%>
		<form name='frm_log' method='post'>
			<label for='mid'>아이디</label><br />

			<!-- 첫글자는 대문자고 나머지는 영소문자 다 가능 하며 8자 이상 20미만 pattern='^[A-Z][A-Za-z0-9]{8,20}$' -->
			<input type='text' id='mid' name='mid' size='18' value='kim' /> <br />
			<label for='pwd'>암호</label><br /> 
			<input type='password' id='pwd'
				name='pwd' size='18' value='1111' /> <br /> 
			<input type='button'
				id='btnLogin' value='로그인' />
		</form>

		<br /> <a href=''>아이디 | 암호찾기</a>
		<% } else {%>

		<%--로그인 이후 화면 --%>
		<span>[<%=session.getAttribute("mid")%>]님 안녕하세요</span><br /> 
		<input type='button' id='btnLogout' value='로그아웃' />
		<% }  %>
	
</div>
<script>logInOut()</script>
</body>
</html>