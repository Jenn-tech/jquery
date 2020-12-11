<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mid = request.getParameter("mid");	//form에 있는값 (id아닌 name값),
	String pwd = request.getParameter("pwd");   //id값은 server로 넘어가지않음 name에 해당하는 value값이 넘어갑
	
	//실제 database에 존재유무
	
	MemberDao dao = new MemberDao();
	boolean b = dao.login(mid, pwd);
	
	if(b){
		session.setAttribute("mid", mid);
		response.sendRedirect("../index.jsp");
	}
	
	session.setAttribute("mid", mid);  //mid라는 속석명에 mid라는 속성값이 들어감
	response.sendRedirect("../index.jsp");
	
	
%>