
/**
 * login / logout을 위한 스크립트
 * 작성일 : 2020.12.11
 * 작성자 : Jenn
 */


//제이쿼리
var logInOut = function(){
	/*
	$('#btnLogin').on('click', function(){
		$('#frm_log').action = "./member/login.jsp";  //id가져옴
		$('#frm_log').submit();		
	});
	
	$('#btnLogout').on('click', function(){
		location.href = "./member/logout.jsp";
		
	});
	
	*/
	
	
	//javascript version
	var btnLogin = document.getElementById('btnLogin'); //document에서 element를 가져오는데 아이디를 사용해서 가져와라 object이름은 btnLogin으로 하겠따
	var btnLogout = document.getElementById('btnLogout');
	
	if(btnLogin != null){
	btnLogin.onclick = function(){
		var frm = document.frm_log; //name가져옴
		frm.action = './member/login.jsp';
		frm.submit();
	}
	}
		
	if(btnLogout != null){
	btnLogout.onclick = function(){
		location.href = './member/logout.jsp';
	}
	}

}