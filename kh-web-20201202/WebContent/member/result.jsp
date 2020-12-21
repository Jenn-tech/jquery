<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업 결과(result)</title>
<link rel = 'stylesheet' type = 'text/css' href='./css/member.css'>
<script src ='./js/member.js'></script>

</head>
<body>
	<div id = 'member' >
		<div class = 'result'>
			<div class = 'result_msg'>작업이 처리되었습니다</div>
		</div>
		<form name = 'frm_member' method = 'POST' >
			<div class = 'btns'>
				<input type = 'button' value = '목록' id = 'btnSelect' />
				<!-- 원래 hidden -->
				<input type = 'text' name = 'findStr' value = '${param.findStr }' />
				<input type = 'text' name = 'nowPage' value = '${param.nowPage }' />
			</div>
		</form>
	</div>
		<script>member()</script>
	
</body>
</html>