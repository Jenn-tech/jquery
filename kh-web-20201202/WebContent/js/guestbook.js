/**
 * 방명록에서 사용되는 스크립트
	2020.12.16
 */

var guestbook = function() {
	//방명록 입력 버튼이 클릭된 경우
	var btnInsert = document.getElementById('btnInsert');
	
	//javascript
	if(btnInsert != null){
		btnInsert.onclick = function(){
			var frm = document.frm_gb_insert;
			frm.action = './guestbook/insert_result.jsp';
			frm.submit();
		}
	}
	
	//제이쿼리
/*	$('#btnInsert').click(function(){
		$('#frm_gb_insert').action = './guestbook/insert_result.jsp';
		$('#frm_gb_insert').submit();
		
	})*/
}