/**
 * 파일 첨부 및 이미지 미리보기
 */

var fileUpload = function(attZone){
	var zone = document.getElementById(attZone);
	
	append(zone);
	
}

//filedUpload 는 클래스, append는 method
function append(zone){
	var style_div = "border:1px solid #00f; width : 120px; height : 100px;"
				  + "display : inline-block; position : relative; margin-right : 4px;";//이미지박스
	var style_delBtn = "position:absolute; bottom:2px; right : 2px; border-width : 0;"
					 + "font-size : 40px; color : #f00; opacity : 0.5; background-color :rgba(0,0,0,0); "; //x버튼
				
	//이미지, file tag, button을 포함하고 있는 div
	var div = document.createElement("div");
	div.setAttribute("style", style_div);
	
	//div클릭하면 append다시 부르게
	div.onclick = function() {
		append(zone);
		
	}
	
	
	zone.appendChild(div);
	
	var delBtn = document.createElement("input");
	delBtn.setAttribute("type", "button");
	delBtn.setAttribute("value", "x");  //x버튼
	delBtn.setAttribute("style", style_delBtn);
	
	div.appendChild(delBtn); 

}