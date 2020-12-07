<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  
  //file name : odd=even_check.jsp
  //1)서버에서 처리할 내용을 ui에서 분리

      String temp = request.getParameter("su");
      String msg = ""; // 결과 메세지
      int su = 0;
      if(temp !=null && !temp.equals("")){
         su = Integer.parseInt(temp); // "5" --> 5
		if(su%2==0){
			msg = su + "는 짝수입니다.";
		}else {
			msg = su + "는 홀수입니다.";
		}
      }
      
      //2)서버는 처리된 내용을 화면에 출력하는 로직을 추가한다.
      out.print(msg);
   %>