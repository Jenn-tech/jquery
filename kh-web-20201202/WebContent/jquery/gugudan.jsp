<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //파라미터 dan을 전달받아 해당 구구단을 출력하는 코드
	String temp = request.getParameter("dan");
	if(temp != null && !temp.equals("")){ //숫자를 정상적으로 입력했을때
		int dan = Integer.parseInt(temp);
		
		String result ;
		for(int i=1 ; i <10 ; i++){
			result = (dan + "*" + i + " =" + (dan * i)+ "<br/>");
			out.print(result);
		}
	}

%>