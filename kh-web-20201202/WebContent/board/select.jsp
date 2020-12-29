<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<link rel='stylesheet' type='text/css' href='./css/board.css' >
<script src='./js/board.js'></script>
</head>
<body>
<div id='borad'>
   <h2 class='title_main'>게시판</h2>
   <form name='frm_board' method='post'>
      <input type='button' id='btnInsert' value='입력' />
      <div>
         <input type='text' name='findStr' id='findStr' value='${param.findStr }' />
         <input type='button' name='btnFind' id='btnFind' value='조회' />
         <input type='text' name='nowPage' value='${(empty param.nowPage)? 1 : param.nowPage }' />
         <input type = 'text' name = 'serial' value = '0'/>
      </div>
   </form>
   
   <div class='title'>
      <span class='no'>NO</span>
      <span class='subject'>제목</span>
      <span class='mid'>작성자</span>
      <span class='mdate'>작성일</span>
      <span class='hit'>조회수</span>
   </div>
   <div class='items'>
      <c:forEach var='vo' begin='1' end='12'>
         <div class='items' onclick = "view(${vo})"> <!-- 나중에 vo가 갖고있는 serial(PK)로 바꿔주면된다 -->
            <span class='no'>NO${vo }</span>
            <span class='subject'>제목(10)</span>
            <span class='mid'>작성자</span>
            <span class='mdate'>작성일</span>
            <span class='hit'>조회수</span>
         </div>
      </c:forEach>
   </div>
   
   <div class='btns'>
      <input type='button' value='맨첨' />
      <input type='button' value='이전' />
   
      <c:forEach var='i' begin='1' end='5'>
         <input type='button' value='${i }' onclick = 'goPage(${i})'/>
      </c:forEach>
      
      <input type='button' value='맨첨' />
      <input type='button' value='이전' />
   </div>
</div>
<script>board()</script>
</body>
</html>