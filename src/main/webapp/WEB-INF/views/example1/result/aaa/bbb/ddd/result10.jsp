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
	<h1>result10.jsp 페이지 입니다.</h1>
	<h2>받은 데이터를 아래에 출력해 주세요</h2>
	<hr />
	<h1>test1 : ${vo.test1}</h1>
	<h1>test2 : ${vo.test2}</h1>
	<h1>test3 : ${vo.test3}</h1>
	<c:forEach var="item" items="${list}">
		<h1>test4 : ${item}</h1>
	</c:forEach>
</body>
</html>