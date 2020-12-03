<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>toggle</title>
<script src='./lib/jquery-3.5.1.min.js'></script>
<style>
	#target{
		border : 1px solid #aaa;	
		width : 200px;
		height : 100px;
		font-weight : bolder;
		text-align : center;
		line-height: 100px;
	}
	
	#btnToggle{
		width : 120px;
		height: 30px;
		line-height: 30px;
	}
	
	.target_on{
		background-color : #ff0;
		color : #f00;
		display:none;
	}
	
	.target_off{
		background-color : #000;
		color : #fff;
		display:block;
	}
</style>
</head>
<body>
<div id='toggle'>
	<div id='target'></div>
	<br/>
	<input type='button' value='ON/OFF' id='btnToggle' />
</div>
<script>
//	$(document).ready(function(){
//	}); script가 아래있어서 안쓰는 것 뿐

	$('#btnToggle').on('click', function(){
		$('#target').toggle(even, odd);
	})
	
	function even(){
		$('#target').attr('class', 'target_on');
	}

	function odd(){
		$('#target').attr('class', 'target_off');
	}
</script>
</body>
</html>