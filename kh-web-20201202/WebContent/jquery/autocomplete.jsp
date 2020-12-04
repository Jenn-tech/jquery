<%@page import ="bean.AutoComplete" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>autocomplete</title>
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/sunny/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
</head>
<body>
<%
//oracle db연결
	AutoComplete ac = new AutoComplete();
	String data = ac.getData(); // [ "kim", "lee", "hong", "park"]

%>
	<div id='autocomplete'>
		<label>성명입력</label>
		<input type='text' name='findStr' id='findStr'/>
		<input type='button' value ='검색' id='btnFind' />
	</div>
<script>
//var data = ['java', 'jara', 'jsp', 'javascript', 'like', 'love', 'life'] 
var data = <%=data%> 
	$('#findStr').autocomplete({
		source : data //배열로 데이터를 갖고있어야함
		});
</script>
</body>
</html>