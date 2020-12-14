<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String mid = request.getParameter("mid");	//form에 있는값 (id아닌 name값),
	String pwd = request.getParameter("pwd");   //id값은 server로 넘어가지않음 name에 해당하는 value값이 넘어갑
	
	//실제 database에 존재유무
	
	
	/*
	null이 아닐경우 로그인하는 초기방법
	session.setAttribute("mid", mid); //1속성명, 2속성값
	response.sendRedirect("../index.jsp"); //response 응답정보 , 현재페이지를 ("..")로 redirect하라 index페이지 다시 열림
	*/
	
	
	
	
	
	
	MemberDao dao = new MemberDao();
	boolean b = dao.login(mid, pwd); //data있다 : true, 없으면 flase
	
	if(b){
		//로그인 성공
		session.setAttribute("mid", mid);
		response.sendRedirect("../index.jsp");
	}else{
		//로그인 실패
		
	}
	
	
	
%>