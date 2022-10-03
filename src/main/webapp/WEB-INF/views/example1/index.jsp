<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>example1/index.jsp 페이지</h1>
	<p>아래 제시한 문제를 보고 해당 문제에 맞게 결과를 출력하세요.</p>
	<p>일부 상세한 처리 조건이 필요할 경우 ExampleController1에 써놨습니다.</p>
	<p>주의 : 이 페이지의 모든 내용은 수정하셔서는 안됩니다. 또한 파일에 대한 무단 추가도 해서는 안됩니다.</p>
	
	<hr />
	<h2>문제1) 아래 경로를 통해 views/example1 폴더 내의 result1.jsp 페이지로 가는 로직을 작성하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/result1">이동</a>
	<hr />
	<h2>문제2) 아래 경로를 통해 views/example1 폴더 내의 result2.jsp 페이지로 가는 로직을 작성하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/result2">이동</a>
	<hr />
	<h2>문제3) 아래 경로를 통해 views/example1 폴더 내의 result3.jsp 페이지로 가는 로직을 작성하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/aaa/result3">이동</a>
	<hr />
	<h2>문제4) 아래 경로를 통해 views/example1 폴더 내의 result4.jsp 페이지로 가는 로직을 작성하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/xxx/result4">이동</a>
	<hr />
	<h2>문제5) 아래 경로를 통해 views/example1 폴더 내의 result5.jsp 페이지로 가는 로직을 작성하고 해당 페이지에서 url 쿼리에 전송되는 데이터를 출력하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/abc/abc/result5?test1=aaa&test2=bbb">이동</a>
	<hr />
	<h2>문제6) 아래 경로를 통해 views/example1 폴더 내의 result6.jsp 페이지로 가는 로직을 작성하고 해당 페이지에서 url 쿼리에 전송되는 데이터를 출력하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/ccc/re6?test1=aaa1&test2=bbb1&test2=bbb2">이동</a>
	<hr />
	<h2>문제7) 아래 경로를 통해 views/example1 폴더 내의 result7.jsp 페이지로 가는 로직을 작성하고 해당 페이지에서 url 쿼리에 전송되는 데이터를 출력하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/result7?test1=aaa1&test1=aaa2&test2=bbb1&test2=bbb2">이동</a>
	<hr />
	<h2>문제8) 아래 경로를 통해 views/example1 폴더 내의 result8.jsp 페이지로 가는 로직을 작성하고 해당 페이지에서 url 쿼리에 전송되는 데이터를 출력하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/result8?test1=aaa1&test2=bbb1&test3=ccc1">이동</a>
	<hr />
	<h2>문제9) 아래 경로를 통해 views/example1 폴더 내의 result9.jsp 페이지로 가는 로직을 작성하고 해당 페이지에서 url 쿼리에 전송되는 데이터를 출력하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/result9?test1=aaa1&test2=bbb1&test3=ccc1">이동</a>
	<hr />
	<h2>문제10) 아래 경로를 통해 views/example1 폴더 내의 result10.jsp 페이지로 가는 로직을 작성하고 해당 페이지에서 url 쿼리에 전송되는 데이터를 출력하세요 (4점)</h2>
	<a href="${pageContext.request.contextPath}/example1/result10?test1=aaa1&test2=bbb1&test3=ccc1&test4=ddd1&test4=ddd2">이동</a>
</body>
</html>