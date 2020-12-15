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
- [3.login, logout화면 초기구현](#3login-logout화면-초기구현)
- [20.12.14 로그인화면-DB연동](#201214-로그인화면-db연동)
- [20.12.15 el, jstl & 방명록(select)](#201215-el-jstl--방명록select)

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

</br>


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
  
</br>


### 1.2.2. div1, div2의 넓이와 높이 지정하기
```java
$('#traverse > div').css({
		'width' : '200px',
		'height': '200px',
		'border' : '1px solid #444'
		});
```

</br>


### 1.2.3. btn1, btn2의 넓이와 높이 지정
```java
	$('#traverse > div >.btn1, .btn2').css({
		'width' : '100px',
		'height': '100px'
		});
```

</br>


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

</br>


## 1.3. [manipulation](kh-web-20201202/WebContent/jquery/manipulation.jsp)
버튼 세개에 각각 click event 처리
### 1.3.1. Wrap 
- onclick 태그하는 방법
```java
function abc(button) {
	//console.log(button.value);
	var wrap = "<lable><input type='checkbox'>확인</lable>";
	$('#main > #target').wrap(wrap);
	}
```

</br>



### 1.3.2. Append
- 제이쿼리 사용
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

</br>



### 1.3.3. Prepend
- javascript 사용
```java
	btnPrepend.onclick = function(){ 
	//console.log(btnPrepend.value);
	var wrap = "<lable><input type='checkbox'>확인</lable>";
	$('#main > #target').prepend(wrap);
		}
```

[전체코드 및 결과 FROM Jennblog](https://wogus789789.tistory.com/147)

</br>


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

</br>


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

</br>


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

</br>


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

</br>


# 2. AJAX
not yet
# 3.[login, logout화면 초기구현](INDEX/201213.md)
- login, logout화면 초기구현
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
- 1. 로그인화면 구현
  - 1.1. MemberDao클래스 생성
  - 1.2. login.jsp수정
<br>

- 2. JSP
  - 2.1. request(요청정보) 세부사용법
    - 2.1.1 파라미터 이름들을 Enumeration으로 받아 화면에 출력하시오
    - 2.1.2 파라미터의 구조들을 Map구조로 받아 화면에 출력하시오
    - 2.1.3. submit후 form태그의 값을 유지하도록 조치하시오
    - (참고) 알아두면 좋을 COLLECTION
<br>

# 20.12.15 [el, jstl & 방명록(select)](INDEX/201215.md)
- 1. el표현식과 jstl
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
- 2. 방명록 (select)
	- 2.1. GuestBookVo
	- 2.2. GuestBookDao
		- 2.2.1. connection, preparedstatement, resultset객체 생성
		- 2.2.2. select 메소드
		- 2.2.3.select를 위한 sql문장 생성
		- 2.2.4. looping
	- 2.3. select.jsp
		- 2.3.1. 검색바
		- 2.3.2. 방명록list

