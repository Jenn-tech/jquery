<%@page import="java.util.Iterator"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>parameterValues</title>
</head>
<body>
<%
	//요청정보와 응답정보에 대한 인코딩끝
	request.setCharacterEncoding("utf-8");
	response.setContentType("text/html;charset-utf-8");
	
	//이 때 post는 대문자로, post일때만 실행해달라
	//get타입 : ?a = 123
	if(request.getMethod().equals("POST")){
		String mid = request.getParameter("mid"); 
		String gender = request.getParameter("gender"); //체크된것만 넘어가기때문에 단수(하나만 넘어감, values아님)
		
		
		//체크된 여러개가 한꺼번에 넘어가기때문에 반환타입은 배열타입
		String[] hobby = request.getParameterValues("hobby"); 
		String[] subject = request.getParameterValues("subject"); 
		String[] attFile = request.getParameterValues("attFile"); 
		
		out.print("<li>아이디 : " + mid);
		out.print("<li>성별 : " + gender);
		out.print("<li>취미 : " + Arrays.toString(hobby));
		out.print("<li>과목 : " + Arrays.toString(subject));
		out.print("<li>첨부파일 : " + Arrays.toString(attFile));
		
		out.print("<h4>getParameterNames()</h4>");
		Enumeration<String> en = request.getParameterNames();
		while(en.hasMoreElements()){
			String str = en.nextElement(); //다중선택일 시 값이 없을때 객체가 넘어가지않음
			out.print("<li>" + str);
		}
		
		out.print("<h4>getParameterMap()</h4>");
		Map<String, String[]> map = null;
		map = request.getParameterMap(); 
		
		Set<String> set = map.keySet(); //Map이 String타입이었끼 때문에 얘도 String타입
		Iterator<String> it = set.iterator(); //set이 String타입이었기떄문에 얘도 String타입
		
		//looping
		while(it.hasNext()){
			String key = it.next();
			String[] values = map.get(key);
			out.print("<li>" + key + " : " + Arrays.toString(values));
		}
		
		
		
		out.print("<hr/>");
	}
	
	
%>
<div id ='parameter'>
	<h3>parameter values</h3>
	
	<form name='frm_param' method='post' >
		<label for = 'mid'>아이디</label>
		<input type='text' id = 'mid' name = 'mid' value = '박씨~	' />
		<br/>
		<label>성별</label>
		<label><input type='radio' name = 'gender' value = 'M'>남성</label>
		<label><input type='radio' name = 'gender' value = 'F'>여성</label>
		<br/>
		<label>취미</label>
		<label><input type = 'checkbox' value = '축구' name = 'hobby'/>축구</label>
		<label><input type = 'checkbox' value = '야구' name = 'hobby'/>야구</label>
		<label><input type = 'checkbox' value = '농구' name = 'hobby'/>농구</label>
		<label><input type = 'checkbox' value = '탁구' name = 'hobby'/>탁구</label>
		<label><input type = 'checkbox' value = '배구' name = 'hobby'/>배구</label>
		<br/>
		<label>선택과목</label>
		<select name= 'subject' size = '5' multiple>
			<option value = 'html5'>HTML5</option>
			<option value = 'css'>css</option>
			<option value = 'javascript'>javascript</option>
			<option value = 'java'>java</option>
			<option value = 'jsp'>jsp</option>
			<option value = 'ajax'>ajax</option>
			<option value = 'jquery'>jquery</option>
		</select>
		<br/>
		<label>첨부파일</label>
		<input type = 'file' name = 'attFile' multiple />
		<p/>
		<input type = 'submit' value = '실행' />
	</form>

</div>
</body>
</html>









