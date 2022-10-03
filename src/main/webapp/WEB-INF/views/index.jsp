<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>시작페이지</h1>
	<h2>문제의 시작은 여기부터 입니다. 밑의 질문에 맞게 페이지를 완성하세요</h2>
	<h2>참고1 : 모든 세팅은 다 맞추어졌으니 혹시 안되실 경우 호출 부탁드립니다.</h2>
	<h2>참고2 : 현재 페이지를 완성시켰을 경우 기본점수 10점을 가산하고 들어갑니다.</h2>
	<h2>참고3 : 각 문제당 배점이 들어갑니다. 자신이 완벽하게 푼 문제만을 가산하여 끝나기 전에 점수를 합산하여 주시기 바랍니다.</h2>
	<h2>참고4 : 합산된 점수는 시험에 동봉한 링크에 본인의 성함과 점수를 넣어 제출해주세요</h2>
	<hr />
	<h2>대 문제 1번</h2>
	<h2>프론트 : example1 아래 페이지, 백앤드 : ExampleController1.java, TestVO1.java 한 세트입니다.</h2>
	<h2>대 문제 2번</h2>
	<h2>프론트 : example2 아래 페이지, 백앤드 : ExampleController2.java, ExampleService2.java ,TestVO2.java ,ExampleDAO2.java 한 세트입니다.</h2>
	
	
	<hr />
	<h2>문제1) example1/index.jsp 페이지로 이동시키세요</h2>
	<a href="${pageContext.request.contextPath}/example1">이동</a>
	<hr />
	<h2>문제2) example2/index.jsp 페이지로 이동시키세요</h2>
	<a href="${pageContext.request.contextPath}/example2">이동</a>
	
</body>
</html>