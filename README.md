# 목차

- [목차](#목차)
- [1. 제이쿼리](#1-제이쿼리)
	- [1.1. filter](#11-filter)
	- [1.2. traverse](#12-traverse)
		- [1.2.1. 기본](#121-기본)
		- [1.2.2. div1, div2의 넓이와 높이 지정하기](#122-div1-div2의-넓이와-높이-지정하기)
		- [1.2.3. btn1, btn2의 넓이와 높이 지정](#123-btn1-btn2의-넓이와-높이-지정)
		- [1.2.4. btn1, btn2에 이벤트 처리](#124-btn1-btn2에-이벤트-처리)
	- [1.3. manipulation](#13-manipulation)
		- [1.3.1. Wrap](#131-wrap)
		- [1.3.2. Append](#132-append)
		- [1.3.3. Prepend](#133-prepend)
	- [1.4. Each](#14-each)
		- [1.4.1. div의 length만큼 개수가져오기](#141-div의-length만큼-개수가져오기)
		- [1.4.2. 첫번째 div의 text를 target의 text에 넣기](#142-첫번째-div의-text를-target의-text에-넣기)
		- [1.4.3. 첫번째 div의 html을 target으 html에 넣기](#143-첫번째-div의-html을-target으-html에-넣기)
		- [1.4.4. 4개의 div에 4개의 color를 차례대로 넣어주기](#144-4개의-div에-4개의-color를-차례대로-넣어주기)
- [2. AJAX](#2-ajax)
- [3. login, logout화면 초기구현](#3-login-logout화면-초기구현)
	- [3.1. 동적include](#31-동적include)
	- [3.2. loninfo.jsp로 이동](#32-loninfojsp로-이동)
		- [3.2.1. 로그인 이전 화면](#321-로그인-이전-화면)
		- [3.2.2. 로그인 이후 화면](#322-로그인-이후-화면)
		- [3.2.3. script](#323-script)
		- [3.2.4. (참고) 정규식](#324-참고-정규식)

# 1. 제이쿼리

## 1.1. [filter](kh-web-20201202/WebContent/jquery/filter.jsp)
- 선택된 요소 중 필요한 요소만을 걸러내는 방법
- 접두문자 ':'을 사용한다. 
- 필터와 필터를 연결하여 사용할 수 있다 
- 종류=> : eq(index), :even, :odd, :first, :last, :gt(index), :lt(index)

```java
	$('#filter > ol > li:first').css('color', '#f00');
	$('#filter > ol > li:eq(2)').css('color', 'green');
	$('#filter > ol > li:odd').css('font-weight', 'bolder');
```
[전체코드 및 결과 FROM Jennblog](https://wogus789789.tistory.com/131)


## 1.2. [traverse](kh-web-20201202/WebContent/jquery/traverse.jsp)
- traverse는 '.'을 찍어서 표현한다.
- 명령어는 filter와 traverse가 매우 유사하거나 상충되기때문에 개인적 취향에 따라 사용빈도수가 달라질 수 있다.
- 종류=> .eq(index), .first(), .last(), .slice(start [, end])
method=> .children(expr), .find(expr), .parent(expr), .next(expr), .prev(expr)

### 1.2.1. 기본
- 넘 어렵당... filter가 더 쓰기 편한 것 같다
```java
	$('#traverse > ul > li').first().css('color', '#f00');
	$('#traverse > ul > li').filter(':odd').css('color', '#00f');
	$('#traverse > ul > li').slice(1,4).css('font-family', '궁서체');
```
  
### 1.2.2. div1, div2의 넓이와 높이 지정하기
```java
$('#traverse > div').css({
		'width' : '200px',
		'height': '200px',
		'border' : '1px solid #444'
		});
```

### 1.2.3. btn1, btn2의 넓이와 높이 지정
```java
	$('#traverse > div >.btn1, .btn2').css({
		'width' : '100px',
		'height': '100px'
		});
```

### 1.2.4. btn1, btn2에 이벤트 처리
```java
	var btn1 = $('.btn1')[0]; //클래스는 기본적으로 배열
	btn1.onclick = function(){
		var p = $(btn1).parent()
		$(p).css('background-color', '#88f');
	}

	
	var btn2 = $('.btn2')[0];
	btn2.onclick = function() {
		$(this).parent().css('background-color', '#ff0');
	}
```  
[전체코드 및 결과 FROM Jennblog](https://wogus789789.tistory.com/146?category=859777)

## 1.3. [manipulation](kh-web-20201202/WebContent/jquery/manipulation.jsp)
버튼 세개에 각각 click event 처리
### 1.3.1. Wrap 
```java
function abc(button) {
	//console.log(button.value);
	var wrap = "<lable><input type='checkbox'>확인</lable>";
	$('#main > #target').wrap(wrap);
	}
```
- onclick 태그하는 방법

### 1.3.2. Append
```java
	var btnAppend = $('#btnAppend')[0];
	btnAppend.onclick = function() {
		//console.log($(this).val());
	var wrap = "<br/><lable><input type='checkbox'>확인</lable>";
	for(var i=0; i<5; i++){
	$('#main > #target').append(wrap);
		}
	}
```
- 제이쿼리 사용

### 1.3.3. Prepend
```java
	btnPrepend.onclick = function(){ 
	//console.log(btnPrepend.value);
	var wrap = "<lable><input type='checkbox'>확인</lable>";
	$('#main > #target').prepend(wrap);
		}
```

[전체코드 및 결과 FROM Jennblog](https://wogus789789.tistory.com/147)

## 1.4. [Each](kh-web-20201202/WebContent/jquery/each.jsp)

### 1.4.1. div의 length만큼 개수가져오기
- size가 아닌length임을 주의
- target의 html을 바꿔줌
```java
$('#each #btnSize')[0].onclick = function(){
	var len = $('#each > #source > div').length; //length
	$('#each > #target').html('div 개수 : ' + len);
	
}
```

### 1.4.2. 첫번째 div의 text를 target의 text에 넣기
```java
$('#each #btnText')[0].onclick = function(){
	//var div = $('#each > #source > div').get(0);
	//var div = $('#each > #source > div:first');
	var div = $('#each > #source > div').first();
	var text = div.text();
	$('#each #target').text(text);
}
```

### 1.4.3. 첫번째 div의 html을 target으 html에 넣기
- text를 넣으면 text값만 가지만 html을 넣으면 html이 다 간다  
적용된 font-size, color 등도 다 가져온다는 말
```java
$('#each #btnHtml')[0].onclick = function(){
	let div = $('#each > #source > div:first');
	let html = $(div).html();
	$('#each #target').html(html);
}
```

### 1.4.4. 4개의 div에 4개의 color를 차례대로 넣어주기
- bg라는 변수에 color 배열생성해주고 each사용해 순서대로 넣어준다
```java
$('#each #btnEach')[0].onclick = function(){
	let bg = ['#00f', '#44f', '#88f', '#aaf'];
	$('#each > #source > div').each(function(index){
		$(this).css('background-color', bg[index]);
		});
}
```
[전체코드 및 결과 FROM Jennblog](https://wogus789789.tistory.com/148)

# 2. AJAX
not yet
# 3. login, logout화면 초기구현
## 3.1. 동적include
- index.jsp안에 aside태그를 하나 만들어줘서 로그인 영역을 생성
- 이 안에 동적include를 하여 loginfo.jsp를 불러온다
  - 동적include특징  
    1. 실행결과가 포함된다. 진행하다 동적include만나면 스탑하고 처리하고 다시 실행
	2. page속성, 문자역 또는 변수사용 가능 (정적 include와는 반대성향)
- 따라서 index가 쭉 실행되다가 동적include를 만나면 stop하고 이것을 실행하고 완료가 되면 다시 밑으로 진행한다
```java
<aside class='aside'>
	<jsp:include page="./member/loginfo.jsp"/>
```

## 3.2. loninfo.jsp로 이동
- if문을 사용하여 session안의 mid속성을 가져온다
  - session의  mid의 attribute값을 가져옴. 
aplication이 모두 생김 그 안에는 session이 있고 session안에는 request가 있음
request안에는 page가 있음  
크기 : a>s>r>p
- 이 때 그 값이 null이면 로그인 이전화면을 보여주고 아니면 로그인 이후 화면을 보여준다
```java
<% 
if( session.getAttribute("mid")== null){ 
%>
		<%--로그인 이전 화면 --%>
	...
		<% } else {%>

		<%--로그인 이후 화면 --%>
	...	
		<% }  %>
```
### 3.2.1. 로그인 이전 화면
```java
		<form name='frm_log' method='post'>
			<label for='mid'>아이디</label><br />
			<input type='text' id='mid' name='mid' size='18' value='kim' /> <br />
			<label for='pwd'>암호</label><br /> <input type='password' id='pwd'
				name='pwd' size='18' value='1111' /> <br /> <input type='button'
				id='btnLogin' value='로그인' />
		</form>

		<br /> <a href=''>아이디 | 암호찾기</a>
```
### 3.2.2. 로그인 이후 화면
```java
<span>[<%=session.getAttribute("mid")%>]님 안녕하세요</span><br /> 
		<input type='button' id='btnLogout' value='로그아웃' />
```
### 3.2.3. script
```java
<script src='./js/login.js'></script> //title아래
<script>logInOut()</script> //body아래

```

### 3.2.4. (참고) 정규식
```java
<!-- 첫글자는 대문자고 나머지는 영소문자 다 가능 하며 8자 이상 20미만-->
 pattern='^[A-Z][A-Za-z0-9]{8,20}$' 
```