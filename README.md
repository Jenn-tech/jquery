# 목차

- [목차](#목차)
- [제이쿼리](#제이쿼리)
- [AJAX](#ajax)
- [login, logout화면 초기구현](#login-logout화면-초기구현)
- [20.12.14 로그인화면-DB연동](#201214-로그인화면-db연동)
- [20.12.15 el, jstl & 방명록(select)](#201215-el-jstl--방명록select)
- [20.12.16 방명록insert, update, delete 및 흐름](#201216-방명록insert-update-delete-및-흐름)
- [20.12.21회원관리 조회, 입력, 상세보기 & 페이징처리](#201221회원관리-조회-입력-상세보기--페이징처리)
- [20.12.22](#201222)
- [20.12.23](#201223)
- [20.12.24](#201224)

# [제이쿼리](INDEX/201212.md)
- 1.제이쿼리](#1-제이쿼리)
  - 1.1. filter
  - 1.2. traverse
    - 1.2.1. 기본
    - 1.2.2. div1, div2의 넓이와 높이 지정하기
    - 1.2.3. btn1, btn2의 넓이와 높이 지정
    - 1.2.4. btn1, btn2에 이벤트 처리
  - 1.3. manipulation
    - 1.3.1. Wrap
    - 1.3.2. Append
    - 1.3.3. Prepend
  - 1.4. Each
    - 1.4.1. div의 length만큼 개수가져오기
    - 1.4.2. 첫번째 div의 text를 target의 text에 넣기
    - 1.4.3. 첫번째 div의 html을 target으 html에 넣기
    - 1.4.4. 4개의 div에 4개의 color를 차례대로 넣어주기


# AJAX
not yet
# [login, logout화면 초기구현](INDEX/201213.md)
- 1.login, logout화면 초기구현
  - 1.1 동적include
  - 1.2. loninfo.jsp로 이동
    - 1.2.1. 로그인 이전 화면
    - 1.2.2. 로그인 이후 화면
    - 1.2.3. script
    - (참고) 정규식
  - 1.3. login.js로 이동
    - 1.3..1. logInOut이라는 function을 만들어준다
    - 1.3.2. 제이쿼리 방식
    - 1.3.3. javascript 방식
    - 1.3.4. btnLogin이 null값이 아닐 때
    - 1.3.5. btnLogout이 null값이 아닐 때


# 20.12.14 [로그인화면-DB연동](INDEX/201214.md)
- 1.로그인화면 구현
  - 1.1. MemberDao클래스 생성
  - 1.2. login.jsp수정
<br>

- 2.JSP
  - 2.1. request(요청정보) 세부사용법
    - 2.1.1 파라미터 이름들을 Enumeration으로 받아 화면에 출력하시오
    - 2.1.2 파라미터의 구조들을 Map구조로 받아 화면에 출력하시오
    - 2.1.3. submit후 form태그의 값을 유지하도록 조치하시오
    - (참고) 알아두면 좋을 COLLECTION
<br>

# 20.12.15 [el, jstl & 방명록(select)](INDEX/201215.md)
- 1.el표현식과 jstl
	- 1.1 jsp표현식과 el표현식
		- 1.1.1 jsp표현식
		- 1.1.2. jsp 스크립틀릿
		- 1.1.3 el표현식
			- 1.1.3.1. el에서 보관소 검색범위
			- 1.1.3.2. el연산식
  - 1.2. jstl(Java Standard Tag Library)
	- 1.2.1. c:out ==> jstl을 사용한 출력문
	- 1.2.2. c:set | c:remove | c:out
	- 1.2.3. c:if
	- 1.2.4. c:choose | c:when | c:otherwise
	- 1.2.5. c:forTokens
	- 1.2.6. c:forEach
- 2.방명록 (select)
	- 2.1. GuestBookVo
	- 2.2. GuestBookDao
		- 2.2.1. connection, preparedstatement, resultset객체 생성
		- 2.2.2. select 메소드
		- 2.2.3.select를 위한 sql문장 생성
		- 2.2.4. looping
	- 2.3. select.jsp
		- 2.3.1. 검색바
		- 2.3.2. 방명록list

# 20.12.16 [방명록insert, update, delete 및 흐름](INDEX/201216.md)
  - 1.방명록 Insert (흐름참고)
	- 1.1. insert.jsp를 select.jsp에 정적으로 삽입
	- 1.2. insert.jsp생성
		- 1.2.1. 설계
		- 1.3. guestbook.js 설계
		- 1.4. insert_result.jsp
			- 1.4.1. 한글 깨지는 것 방지위한 인코딩
			- 1.4.2. useBean으로 Vo클래스 가져옴 & setProperty 활용
			- 1.4.3. msg변수 설정해주고 request에 msg를 설정
			- 1.4.4. script](#144-script)
	- 1.3. Dao클래스의 insert메소드](#13-dao클래스의-insert메소드)
- 2.방명록 Update](#2-방명록-update)
	- 2.1. Select.jsp](#21-selectjsp)
	- 2.2 guestbook.js에서 funcUpdate function 추가
	- 2.3. update_result.jsp](#23-update_resultjsp)
		- 2.3.1. 한글 꺠짐 방지 위한 인코딩 작업
		- 2.3.2. useBean과 Property사용
		- 2.3.3. dao클래스의 update메소드에 vo삽입
		- 2.3.4. script 부분](#234-script-부분)
	- 2.4. GuestBookDao에서 update 메소드 추가
- 3.방명록 Delete
	- 3.1. select.jsp에서 수정및 추가
	- 3.2. guestbook.js에서 funcDelete function 추가
	- 3.3. delete_result.jsp
		- 3.3.1. UTF-8인코딩
		- 3.3.2. useBean과 setProperty활용
		- 3.3.3. dao클래스의 delete메소드에 vo삽입
		- 3.3.4. script
	- 3.4. GuestBookVo에서 delete메소드 추가
- 4 방명록 흐름


# 20.12.21[회원관리 조회, 입력, 상세보기 & 페이징처리](INDEX/201221.md)
- 1.회원관리 조회 (select.jsp)
  - 1.1.member.js
    - 1.1.1. js삽입하고 스크립트에 member function넣어줌
    - 1.1.2. 편의를 위해서 getID(id)라는 function을 생성해줌
    - 1.1.3. member function 생성(btnInsert클릭시)
    - 1.1.4. btnFind클릭시
    - 1.1.5. 페이지자동화
    - 1.1.6. 각 페이지 눌렀을 시 각페이지 표시
    - 1.1.7. data 자동화
    - 1.1.8 상세정보로 이동
- 2.입력페이지 설정(insert.jsp)
  - 2.1. 목록눌렀을 때 (btnSelect)
  - 2.2. 저장눌렀을 때
  - 2.3. 다음 api사용해 우편번호검색
  - 2.4. 사진미리보기
    - 2.4.1. 대충 이런 html이 있다
    - 2.4.2. 이미지 파일 미리보는 코드
- 3.상세보기 페이지(view.jsp)
  - 3.1. 목록으로갈떄 페이지정도 유지하도록
  - 3.2. 수정누르면 update.jsp로 이동
- 4.page
  - 4.1. page class 변수설정
  - 4.2. page class
  - 4.3. 페이징계산
  - 4.3.2. pageCompute메소드 코드
- 5.servlet
  - 5.1. servlet 흐름
  - 5.2. MemberServlet
    - 5.2.1. HttpServlet상속
    - 5.2.2. Anootation 선언 + urlPatterns지정
    - 5.2.3. doGet() , doPost() 메소드를 오버라이딩

# [20.12.22](INDEX/201222.md)
- [1.](#1)
	- [1.1. url을 아래와 같이 설정](#11-url을-아래와-같이-설정)
	- [1.2. doPost에 switch문 활용](#12-dopost에-switch문-활용)
	- [1.3. 결과적으로 둘은 같다](#13-결과적으로-둘은-같다)

# [20.12.23](INDEX/201223.md)
- [1. 계층형 쿼리](#1-계층형-쿼리)
  - [1.1. sample table생성 및 insert](#11-sample-table생성-및-insert)
  - [1.2. 계층형 쿼리 작업](#12-계층형-쿼리-작업)
  - [1.3. lpad](#13-lpad)
  - [1.4. 댓글에 들여쓰기](#14-댓글에-들여쓰기)
  - [1.](#1)
    - [1.4.1 웹에서의 공백은 `&nbsp;`](#141-웹에서의-공백은-nbsp)
# [20.12.24](INDEX/201224.md)
[1 mybatis 설정](#1-mybatis-설정)
  - [1.1.config.xml](#11configxml)
  - [1.2. BoardFactory.java](#12-boardfactoryjava)
  - [1.3. BoardDao.java](#13-boarddaojava)
  - [1.4. board.xml](#14-boardxml)
- [2. DataBase](#2-database)
  - [2.1. 게시판 테이블 생성 및 시퀀스 생성](#21-게시판-테이블-생성-및-시퀀스-생성)
    - [2.1.1. 게시판 테이블 생성](#211-게시판-테이블-생성)
    - [2.1.2. 첨부파일 테이블 생성](#212-첨부파일-테이블-생성)
    - [2.1.3. board, boardAtt시퀀스생성](#213-board-boardatt시퀀스생성)
    - [2.1.4. 데이터 삽입](#214-데이터-삽입)
- [3 select](#3-select)
  - [3.1. 모든 serial값을 가져옴](#31-모든-serial값을-가져옴)
  - [3.2. serial 한건 출력](#32-serial-한건-출력)
    - [3.3. 모든 데이터를 BoardVo에 담아 출력](#33-모든-데이터를-boardvo에-담아-출력)
  - [3.3.1. BoardVo를 생성해주자](#331-boardvo를-생성해주자)
  - [3.3. serial번호에 해당하는 BoardVo 한건 출력](#33-serial번호에-해당하는-boardvo-한건-출력)
  - [3.4. 검색어를 전달받아 해당자료를 BoardVo에 담아 출력](#34-검색어를-전달받아-해당자료를-boardvo에-담아-출력)
- [4. insert](#4-insert)
  - [4.1. 한건의 데이터를 BoardVo에 담아 저장하시오](#41-한건의-데이터를-boardvo에-담아-저장하시오)
- [5. update](#5-update)
  - [5.1. serial = 1인 자료의 subject, doc를 수정](#51-serial--1인-자료의-subject-doc를-수정)
- [6. delete](#6-delete)
  - [6.1. serial 을 전달받아 자료를 삭제](#61-serial-을-전달받아-자료를-삭제)
- [7. 게시판만들기](#7-게시판만들기)
  - [7.1. 요구분석(필요한 기능)](#71-요구분석필요한-기능)
  - [7.2. UI 작성](#72-ui-작성)
  - [7.3. Controll(src/board)](#73-controllsrcboard)
  - [7.2. 화면설계와 순서](#72-화면설계와-순서)
