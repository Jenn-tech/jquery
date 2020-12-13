# 목차

- [목차](#목차)
- [1. 제이쿼리](#1-제이쿼리)
  - [1.1. filter](#11-filter)
  - [1.2. traverse](#12-traverse)
    - [1.2.1. 기본](#121-기본)
    - [1.2.2. div1, div2의 넓이와 높이 지정하기](#122-div1-div2의-넓이와-높이-지정하기)
    - [1.2.3. btn1, btn2의 넓이와 높이 지정](#123-btn1-btn2의-넓이와-높이-지정)
    - [1.2.4. btn1, btn2에 이벤트 처리](#124-btn1-btn2에-이벤트-처리)

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