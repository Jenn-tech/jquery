<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="dao" class="gbook.GuestBookDao"/> 

<!-- form에 있는 모든 정보가 vo에 들어간다 -->
<jsp:useBean id="vo" class="gbook.GuestBookVo"/> 
<jsp:setProperty property="*" name = "vo" />

<% 

	String msg = dao.insert(vo); //기본hint
	request.setAttribute("msg", msg);
	

%>
<script>
	var msg = '${msg}'; //script내에서 jstl사용가능
	alert(msg);
	location.href = '../index.jsp?inc=./guestbook/select.jsp';
</script>
