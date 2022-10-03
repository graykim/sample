<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>result6.jsp 페이지 입니다.</h1>
	<h2>받은 세개의 데이터를 아래에 출력해 주세요</h2>
	<hr />
	<h1>text : re6</h1>
	<h1>test1 : ${test1}</h1>
	<c:forEach var="item" items="${test2}">
	<h1>test2 : ${item}</h1>
	</c:forEach>

</body>
</html>