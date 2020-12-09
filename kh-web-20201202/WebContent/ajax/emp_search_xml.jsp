<?xml version ='1.0' encoding='UTF-8' ?> 
<%@page import="bean.EmpVo"%>
<%@page import="java.util.List"%>
<%@page import="bean.EmpDao"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
/*xml타입을 만들기위한 세가지 형태

/1) <?xml version ='1.0' encoding='UTF-8' ?> 
2) text/xml로 수정
3) 임의의 태그를 선언해 자료를 구조화

*/
%>
<%
	String findStr = request.getParameter("findStr");
	EmpDao dao = new EmpDao();
	List<EmpVo> list = dao.search(findStr);

%>
<emps>
	<% for (EmpVo vo: list) { %>
	<emp>
		<id><%=vo.getEmployee_id()%></id>
		<name><%=vo.getFirst_name()%></name>
		<email><%=vo.getEmail()%></email>
		<phone><%=vo.getPhone_number()%></phone>
		<salary><%=vo.getSalary()%></salary>
	</emp>
	<% } %>
</emps>