<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel = 'stylesheet' type = 'text/css' href='./css/board.css'>
<script src ='./js/board.js'></script>

</head>
<body>
<div id = 'board'>
	<div id = 'msg'>
		작업이 처리되었습니다
	</div>
	<form name = 'frm_board' method = 'POST' claee='frm_msg'>
		<input type = 'button' value = '목록' id = 'btnSelect' />
		<input type = 'text' name = 'findStr' value = '${param.findStr }'/>
		<input type = 'text' name = 'nowPage' value = '${param.nowPage }'/>
	</form>

</div>
<script>board()</script>
</body>
</html>