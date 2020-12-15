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
		- [(참고) 정규식](#참고-정규식)
	- [3.3. login.js로 이동](#33-loginjs로-이동)
		- [3.3.1. logInOut이라는 function을 만들어준다](#331-loginout이라는-function을-만들어준다)
		- [3.3.2. 제이쿼리 방식](#332-제이쿼리-방식)
		- [3.3.3. javascript 방식](#333-javascript-방식)
		- [3.3.4. btnLogin이 null값이 아닐 때](#334-btnlogin이-null값이-아닐-때)
		- [3.3.5. btnLogout이 null값이 아닐 때](#335-btnlogout이-null값이-아닐-때)
- [4. 로그인화면-DB연동](#4-로그인화면-db연동)
	- [4.1. MemberDao클래스 생성](#41-memberdao클래스-생성)
	- [4.2. login.jsp수정](#42-loginjsp수정)
- [5. JSP](#5-jsp)
	- [5.1. request(요청정보) 세부사용법](#51-request요청정보-세부사용법)
		- [5.1.1 파라미터 이름들을 <span style="color:MediumPurple">**Enumeration**</span>으로 받아 화면에 출력하시오](#511-파라미터-이름들을-enumeration으로-받아-화면에-출력하시오)
		- [5.1.2 파라미터의 구조들을 <span style="color:MediumPurple">**Map구조**</span>로 받아 화면에 출력하시오](#512-파라미터의-구조들을-map구조로-받아-화면에-출력하시오)
		- [5.1.3. submit후 form태그의 값을 유지하도록 조치하시오](#513-submit후-form태그의-값을-유지하도록-조치하시오)
		- [(참고) **알아두면 좋을<span style="color:MediumPurple"> COLLECTION**](#참고-알아두면-좋을span-stylecolormediumpurple-collection)
- [20/12/15](#201215)
	- [1.1 jsp표현식과 el표현식](#11-jsp표현식과-el표현식)
	- [1.2. jstl(Java Standard Tag Library)](#12-jstljava-standard-tag-library)
		- [1.2.1. c:out ==> jstl을 사용한 출력문](#121-cout--jstl을-사용한-출력문)
		- [1.2.2. c:set | c:remove | c:out](#122-cset--cremove--cout)
		- [1.2.3. c:if](#123-cif)
		- [1.2.4. c:choose | c:when | c:otherwise](#124-cchoose--cwhen--cotherwise)
		- [1.2.5. c:forTokens](#125-cfortokens)
		- [1.2.6. c:forEach](#126-cforeach)

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

</br>


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

</br>


### 3.2.2. 로그인 이후 화면
```java
<span>[<%=session.getAttribute("mid")%>]님 안녕하세요</span><br /> 
		<input type='button' id='btnLogout' value='로그아웃' />
```

</br>


### 3.2.3. script
- 이를 통해 login.js의 logInOut이라는 function을 사용할 것을 알 수 있음
```java
<script src='./js/login.js'></script> //title아래
<script>logInOut()</script> //body아래

```

</br>



### (참고) 정규식
```java
<!-- 첫글자는 대문자고 나머지는 영소문자 다 가능 하며 8자 이상 20미만-->
 pattern='^[A-Z][A-Za-z0-9]{8,20}$' 
```

## 3.3. login.js로 이동  

### 3.3.1. logInOut이라는 function을 만들어준다
```java
var logInOut = function(){ ..}
```

</br>



### 3.3.2. 제이쿼리 방식
```java
	$('#btnLogin').on('click', function(){
		$('#frm_log').action = "./member/login.jsp";  //id가져옴
		$('#frm_log').submit();		
	});
	
	$('#btnLogout').on('click', function(){
		location.href = "./member/logout.jsp";
		
	});
```


</br>


### 3.3.3. javascript 방식
- btnLogin값이 null이아니면 login.jsp로 가는 aciton을 하고 btnLogout값이 null이 아니면 logout.jsp로 이동
  - 이때 두 버튼이 이동하는 문법이 다른 이유는 btnLogin은 form의 형식을 사용해서 submit하면 action을 취하는 형식을 쓸 수 있지만 btnLogout은 input을 썼기때문에 logout은 action을 취할 수 없다. 따라서 logout을 했을 경우 location을 이동시켜주는 형태로 만들 수 있음
```java
	var btnLogin = document.getElementById('btnLogin'); //document에서 element를 가져오는데 아이디를 사용해서 가져와라 object이름은 btnLogin으로 하겠따
	var btnLogout = document.getElementById('btnLogout');
	
	if(btnLogin != null){
	btnLogin.onclick = function(){
		var frm = document.frm_log; //name가져옴
		frm.action = './member/login.jsp';
		frm.submit();
	}
	}
		
	if(btnLogout != null){
	btnLogout.onclick = function(){
		location.href = './member/logout.jsp';
	}
	}
```


</br>


### 3.3.4. btnLogin이 null값이 아닐 때
- login.jsp로 이동
  - 이 때 form에 있는값 (id아닌 name값)  
id값은 server로 넘어가지않음 name에 해당하는 value값이 넘어갑
- response.sendRedirect는 ("..")를 다시 로딩? 뭐 하라 이런 뜻이니까 속성을 set하거나 remove하고나서 다시 index를 로드하니까 그때 그 값이 null이냐 아니냐에 따라서 로그인되거나 로그아웃됨
- (참고) database를 쓰지않고 null이 아닐경우 로그인하는 초기방법임
```java
	tring mid = request.getParameter("mid");
	String pwd = request.getParameter("pwd");   
	
	session.setAttribute("mid", mid); //1속성명, 2속성값
	response.sendRedirect("../index.jsp"); 
	//response 응답정보 , 현재페이지를 ("..")로 redirect하라 index페이지 다시 열림
	
```


</br>


### 3.3.5. btnLogout이 null값이 아닐 때  
```java
	session.removeAttribute("mid");
	response.sendRedirect("../index.jsp");
```
[전체 코드 및 결과보기 From Jennblog](https://wogus789789.tistory.com/144)  

</br>


# 4. 로그인화면-DB연동
## 4.1. MemberDao클래스 생성
- [application](kh-web-20201202/src/bean/Application.java)객체 생성하여 연결해준다
- sql문장 실행하여 mid가 1개일시 true를 return, 기본값은 false(로그인안된 상황)
```java
public class MemberDao {
	Connection conn; //database의 연결정보
	PreparedStatement ps; //문자열로 되어있는 sql문장을 sql실행문장으로 만들어주는statement
	ResultSet rs; //select문의 실행결과
	
	public MemberDao() {
		conn = new Application().getConn();
	
	}
	
	public boolean login(String mid, String pwd) {
		boolean b = false; //기본 : 로그인되지 않았어
		try {
			String sql = "select count(mid) cnt from members where mid=? and pwd=? ";
			ps = conn.prepareStatement(sql);
			ps.setString(1, mid); //index는 1부터 시작
			ps.setString(2, pwd);
			
			rs = ps.executeQuery();
			if(rs.next()) {
				int cnt = rs.getInt("cnt");
				if (cnt >= 1) { //정확히는 1
					b = true;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			return b;
		}
	}
}
```

## 4.2. login.jsp수정
- MemberDao객체 생성
```jsp
	MemberDao dao = new MemberDao();
	boolean b = dao.login(mid, pwd); //data있다 : true, 없으면 flase
	
	if(b){
		//로그인 성공
		session.setAttribute("mid", mid);
		response.sendRedirect("../index.jsp");
	}else{
		//로그인 실패
	%>
	<script>
		alert('fail');
		location.href='../index.jsp';
	</script>
	<% } %>
```

# 5. JSP
## 5.1. request(요청정보) 세부사용법
- text, radio, checkbot, select, 첨부파일, submit 버튼을 만들어준다

```html
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
		<input type = 'button' value = '실행' id = 'btnRun'/>
	</form>

</div>
```
<br>

- <span style="color:MediumPurple">**request.getParameter()**</span>: 항목이 1개 요소(text, radio, number, date, color, datetime..)  
체크된것만 넘어가기때문에 단수(하나만 넘어감, values아님)
```java
		String mid = request.getParameter("mid"); 
		String gender = request.getParameter("gender"); 
```
<br/>

- <span style="color:MediumPurple">**request.getParameterValues()**</span> : 항목이 2개이상(checkbox, select)   
따라서 리턴타입은 배열

```java
  		String[] hobby = request.getParameterValues("hobby"); 
		String[] subject = request.getParameterValues("subject"); 
		String[] attFile = request.getParameterValues("attFile"); 
```
<br>

- 화면에 값 출력
  - 이 때 values들은 배열이기때문에 Arrays를 활용해 tostring을 활용해준다
```java
		out.print("<li>아이디 : " + mid);
		out.print("<li>성별 : " + gender);
		out.print("<li>취미 : " + Arrays.toString(hobby));
		out.print("<li>과목 : " + Arrays.toString(subject));
		out.print("<li>첨부파일 : " + Arrays.toString(attFile));
	}
```
<br>

### 5.1.1 파라미터 이름들을 <span style="color:MediumPurple">**Enumeration**</span>으로 받아 화면에 출력하시오
 - Enumeration collection 사용 (getParameterNames())
```java
		out.print("<h4>getParameterNames()</h4>");
		Enumeration<String> en = request.getParameterNames();
		while(en.hasMoreElements()){
			String str = en.nextElement(); //다중선택일 시 값이 없을때 객체가 넘어가지않음
			out.print("<li>" + str);
		}
```
<br>

### 5.1.2 파라미터의 구조들을 <span style="color:MediumPurple">**Map구조**</span>로 받아 화면에 출력하시오
- key 값은 중복안되지만 value값은 중복가능(배열구조로 되어있음)
- key값전체 가져오는 것 keySet, value값만 가져오는 것 values
  
|key|value|
|------|------|
|mid|"hong"
|gender|"남"or"여"|
|hobby|[축구, 농구, 탁구..]
|subject|[html, css...]
|attFile|[a.png, b.png...]

<br>

```java
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
```

<br>

### 5.1.3. submit후 form태그의 값을 유지하도록 조치하시오
```java
<script>
	$('#btnRun').on('click', function() {
		var param = $('#frm_param').serialize();
		$('#result').load('./jsp/parameterValuesCtrl.jsp', param);
		})

</script>
```

<br>


### (참고) **알아두면 좋을<span style="color:MediumPurple"> COLLECTION**
- List 
  - 순서있음, 중복가능 => 배열구조와 가장 유사
  - ArrayList, Vector
- Map<K,V> 
  - k : 중복불가, v : 중복가능 => Iterator, Map.Entry사용하여 값을 빼낼수있음
  - HashMap
- set
  - 순서없음, 중복불가능 => Iterator라는 클래스사용가능
  - HashSet
<br>

[전체 코드 및 결과보기 From Jennblog](https://wogus789789.tistory.com/149)  


# 20/12/15
## 1.1 jsp표현식과 el표현식
- jsp표현식
```java
<%="hello " %>
```
- jsp 스크립틀릿
```java
  <% out.println(:hello");%>
```
- el표현식
```java
${hello}
```

## 1.2. jstl(Java Standard Tag Library)

- [톰캣사이트](https://tomcat.apache.org/download-taglibs.cgi) 에서 4개의 태그라이브러리 복사
- <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"  %>


### 1.2.1. c:out ==> jstl을 사용한 출력문
```java
		<li>Name : <c:out value ='${pageScope.page_name }' default ='이름을 입력하세요' /></li>
		<li>Score : <c:out value ='${pageScope.page_score }' default ='빵점' /></li>
		<li>Name(req) : <c:out value ='${requestScope.req_name}'  /></li>
		<li>Score(req) : <c:out value ='${requestScope.req_score }'  /></li>
		<li>Name : <c:out value ='${page_name }'/></li>
		<li>Score : <c:out value ='${page_score }'/></li>
```

### 1.2.2. c:set | c:remove | c:out
```java
		<c:set var='score' value='100'/>
			<li>Score 1 : <c:out value = '${score }'/> </li>
		<c:remove var ='score' />
			<li>Score 2 : <c:out value = '${score }' default ='변수가 삭제됨.'/>
	
```

### 1.2.3. c:if
- 문법
```java
		<c:if test = '${req_score >= 90 }'>
			<li>
				<font color = 'red'>장학생</font>	
			</li>
		</c:if>
```
<br>

- kor, eng변수에 임의 값을 대입하여 request영역에 저장한 후 두수의 합이 180이상이면 '우등생'을 출력하시오. 
  ```java
  		<c:set var ='kor' value = '100'/>
		<c:set var ='eng' value = '90'/>
		<c:if test='${(kor+eng) >=180 }'>
			<font color='blue'>우등생</font>
		</c:if>
  ```

  ### 1.2.4. c:choose | c:when | c:otherwise
- 문법 
  ```java
  		<c:choose>
			<c:when test ='조건식'> T </c:when>
			<c:when test ='조건식'> T </c:when>
			...
			<c:otherwise>
				맞는 조건식이 없을 경우
			<c:otherwise>
		<c:choose>
  ```
<br>

  - 구매수량, 단가를 임의의 변수에 저장하여 scope에 담고, 구매금액(구매수량*단가)에 따라 사은품이 지급되도록 choose문을 기술하시오<br>
			- 1000원 이상 : 화장지 <br>
			- 10000원 이상 : 자전거 <br>
			- 100000원 이상 : 아파트 <br>
  ```java
  	<h5>방법1(JSP)</h5>
		<%
			int ea = 100; //구매수량
			int price = 500; //단가
			int amount = ea*price;
			
			request.setAttribute("amount", amount);
		%>
		<c:choose>
			<c:when test="${amount>=100000 }">아파트 당첨</c:when>
			<c:when test="${amount>=10000 }">자전거 당첨</c:when>
			<c:when test="${amount>=1000 }">화장지 </c:when>
			<c:otherwise>다음기회에</c:otherwise>
		</c:choose>
		
	<h5>방법2</h5>
		<c:set var ='ea' value = '100'/>
		<c:set var ='price' value = '500'/>
		<c:set var ='amount' value = '${ea*price }'/>
		<c:choose>
			<c:when test="${amount>=100000 }">아파트 당첨</c:when>
			<c:when test="${amount>=10000 }">자전거 당첨</c:when>
			<c:when test="${amount>=1000 }">화장지 </c:when>
			<c:otherwise>다음기회에</c:otherwise>
		</c:choose>
			
			
	<h5>내방법</h5>	
			<c:set var = 'amount' value = '3'/>
			<c:set var = 'price' value = '10000'/>
			<c:choose>
				<c:when test="${(amount*price) >= 1000}" >화장지</c:when>
				<c:when test="${(amount*price) >= 10000}" >자전거</c:when>
				<c:when test="${(amount*price) >= 100000}" >아파트</c:when>
			</c:choose>
	
  ```

  ### 1.2.5. c:forTokens
- 문법
  ```java
  		<c:forTokens var = '변수명' items = '토큰 문자열' delims = '구분자'>
		
		</c:forTokens>
  ```
- 예제
  ```java
  	<c:forTokens var = 'item' items = "개나리, 진달래, 코스모스 장미, 국화, 수국화, 연꽃, 무궁화, 해바라기" delims= ",">
		<li><c:out value = '${item }'/></li>
	</c:forTokens>
  ```

  ### 1.2.6. c:forEach
- 문법 
```java
[c:forEach var='변수명' items='배열 | collection' begin = '시작값' end ='끝값' step = '증가값' varStatus = '상태값']
	...
[/c:forEach]

```
- forEach를 사용하여 1~100까지의 홀수를 출력하시오.

  ```java
  <legend>
		</legend>
		<c:forEach var = 'i' begin ='1' end = '100' step = '2'> 
			<c:out value="${i }"/>(${i })
		</c:forEach>
  ```

- List[MemberVo] 타입의 데이터를 scope에 저장하고 forEach문을 사용하여 화면에 출력하시오.
```java
		<%
			List<MemberVo> list = new ArrayList<MemberVo>();
			MemberVo v1 = new MemberVo();
			v1.setMid("Park");
			v1.setPhone("010-6545-5454");
			list.add(v1);
			
			v1 = new MemberVo();
			v1.setMid("ki,");
			v1.setPhone("010-4747-1414");
			list.add(v1);
			
			v1 = new MemberVo();
			v1.setMid("hong");
			v1.setPhone("010-7575-8686");
			list.add(v1);
		
			request.setAttribute("list", list); //scope에 저장
		%>
		<c:forEach var = 'vo' items = '${list }'>
			<li>${vo.mid } : ${vo.phone }</li> <!-- vo.getMid와 같음 -->
		</c:forEach>
```