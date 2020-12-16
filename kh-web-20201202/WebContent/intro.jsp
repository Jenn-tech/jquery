<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>intro</title>
<!-- 라이브러리다운 -->
<script src='./lib/jquery-3.5.1.min.js'></script>
</head>
<body>
<% //scriptlet : java coding area
	out.print("hi jQuery...");

%>
<h1 id='header'>jQuery Test를 위한 태그(II)</h1>
<ul>
	<li><a href='index.jsp?inc=./jquery/filter.jsp'>FILTER</a></li>
	<li><a href='index.jsp?inc=./jquery/traverse.jsp'>TRAVERSE</a></li>
</ul>

<script>
$('#header').css('color', '#f00');

</script>
</body>
</html>c