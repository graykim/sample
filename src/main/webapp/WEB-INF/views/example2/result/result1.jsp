<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>example2/result/result1.jsp 페이지</h1>
	<p>조건1) 반드시 spring form 태그를 쓰셔야 합니다</p>
	<p>조건2) 해당 id로 색인한 모든 데이터가 아래 칸에 전부 들어와야 합니다.</p>
	<p>조건3) id는 수정되어서는 안됩니다.</p>
	<hr />
	
	<form:form modelAttribute="vo" action="${pageContext.request.contextPath}/example2/update" method="get">
		id <form:input path="id" name="id"/><br>
		data1 <form:input path="data1" name="data1"/><br>
		data2 <form:input path="data2" name="data2"/><br />
		data3 <form:input path="data3" name="data3"/><br />
		<button>전송</button>
	</form:form>
	
</body>
</html>