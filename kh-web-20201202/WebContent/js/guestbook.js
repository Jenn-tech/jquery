/**
 * 방명록에서 사용되는 스크립트
	2020.12.16
 */

var guestbook = function() {
	//─────────────────────────
	//1)방명록 입력 버튼이 클릭된 경우
	//─────────────────────────
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
//─────────────────────────
//2)방명록 삭제 버튼이 클릭된 경우
//─────────────────────────
function funcDelete(frm){
	let pwd = prompt("방명록을 삭제하시려면 작성시 암호를 입력해주세요");
	frm.pwd.value = pwd; //hidden태그에 값을 집어넣음
	frm.action = './guestbook/delete_result.jsp';
	frm.submit();
	
	
}



//─────────────────────────
//3)방명록 수정 버튼이 클릭된 경우
//─────────────────────────
function funcUpdate(frm){
	if(frm.btnUpdate.value=='수정'){
		frm.doc.disabled = false;
		frm.btnUpdate.value='수정내용저장';
	}else if(frm.btnUpdate.value=='수정내용저장'){
		let pwd = prompt("수정된 내용을 저장하시려면 암호를 입력하세요");
		frm.pwd.value = pwd;
		frm.action = './guestbook/update_result.jsp';
		frm.submit();
	}
}







