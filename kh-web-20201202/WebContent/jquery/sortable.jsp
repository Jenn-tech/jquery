<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sortable</title>
<link rel='stylesheet' type='text/css'
   href='http://code.jquery.com/ui/1.12.1/themes/blitzer/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>
<style>
	
	#sortable>#items>li {
	list-style: none;
	border: 1px dashed white;
	background-color: #f99;
	color: #ffffe6;
	width: 150px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	font-family: 궁서체;
	font-size : 1rem;
}

	#sortable>#items>li:first-child {
	border-radius: 10px 10px 0 0;
	background: pink;
}

	#sortable>#items>li:last-child {
	border-radius: 0 0 10px 10px;
	background : pink;
}

	#items li:hover{
		cursor : pointer;
	}
	
</style>
</head>
<body>
<div id='sortable'>
	<ul id='items'>
		<li>html5</li>
		<li>css3</li>
		<li>javascript</li>
		<li>java</li>
		<li>jdbc</li>
		<li>jquery</li>
		<li>ajax</li>
		<li>mybatis</li>
		<li>jsp</li>
		<li>spring boot</li>
		<li>final project</li>
	</ul>
</div>
<script>
	$('#items').sortable();
</script>
</body>
</html>