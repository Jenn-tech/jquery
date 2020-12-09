<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.EmpDao"%>
<%@page import="bean.EmpVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
//?findStr = abc 입력하면 emp_search로 전달 
//emp_search_form이 ajax로 요청을 함 (중간역할) = servlet, spring-controller
//사용자의 요청정보를 dao에 전달한 후 그 결과를 다시 사용자에게 반환
	//emp-Search_form.jsp의 findStr버튼 ( request : 사용자의 요청정보가 들어있는 객체_그 중에서 findStr파라미터를 가져와라)	

	//요청된 파라미터를 가져와라 파라미터의 종류는 findStr이다. ?findStr = abc라면 findsStr이라는 변수에 abc가 들어감
	String findStr = request.getParameter("findStr");

	
   EmpDao dao = new EmpDao();
   
 //dao의 search라는 메소드 실행 findStr에 abc라는 값이 들어감, 그 실행결과가 list타입의 EmpVo타입의 반환형을 갖고 있는것
 //List<EmpVo> search(String a)라는 메소드가 EmpDao안에 있겠구나라고 생각해야함
   List<EmpVo> list = dao.search(findStr);
   List<String> sb = new ArrayList<String>();
   
	//%s-문자열(string), %d-정수형(digit), %c-문자(char), %f-실수(float)
   
 //[{'id : '%s', 'name' : '%s', 'email' : '%s', 'phone' : '%s', 'salary' : '%f'}, {}]            
	String fmt = "{"
			   + " 'id' : '%d', "
               + " 'name' : '%s', "
               + " 'email' : '%s', "
               + " 'phone' : '%s', "
               + " 'salary' : '%10.1f' "
               + "}";
             
   //리스트를 이런식으로 looping
   for(EmpVo vo : list){//향상된 for문
		String str = String.format(fmt, //fmt라는 포맷으로
				vo.getEmployee_id(), //첫번째%d
				vo.getFirst_name(), //두번째 %s
				vo.getEmail(),	//세번째 %s
				vo.getPhone_number(),	//네번째 %s
				vo.getSalary()	//다섯번째 %10.1f
				);
   		str = str.replaceAll("'", "\"");//역슬러시해주는 이유 : 모양만 큰따옴표지 큰따옴표의 기능은 없다는 뜻
		sb.add(str); 
		//String : 고정문자열(탐색-메모리공간확보-저장의 프로세스라서 속도가 느림)
		//stringbuilder나 buffer는 저장만함
		
   }
   
 //toArray : 저장된 값을 배열로 바꿔라 [{A}, {B}..], toString: 그 값을 문자열로 바꿔라
   out.print(Arrays.toString(sb.toArray()));
	
	

	
%>