<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>example2/index.jsp 페이지</h1>
	<p>아래 제시한 문제를 보고 해당 문제에 맞게 결과를 출력하세요.</p>
	<p>일부 상세한 처리 조건이 필요할 경우 ExampleController2에 써놨습니다.</p>
	<p>주의. 이 파일에 대한 수정은 가능하지만 파일에 대한 무단 추가 및 삭제는 안됩니다. 되도록 현재 파일을 활용해서 문제를 풀어주세욘</p>
	<h3>참고</h3>
	<p>1. "redirect:경로"를 잘 활용하세요</p>
	<p>2. mybatis에서 필드 null 값 체크하는 법 ex) test = "data1 != null and !data1.equals('')"</p>
	
	<hr />
	<h2>문제1) example2/index.jsp로 가게 될 경우 게시판 내용을 테이블로 아래에 출력해 주세요 (5점)</h2>
	<table border="1">
		<thead>
			<tr>
				<th>id</th>
				<th>data1</th>
				<th>data2</th>
				<th>data3</th>
			</tr>
		</thead>
		<tbody id="table-body">
			<c:forEach var="item" items="${list}">
			<tr>
				<td>${item.id}</td>
				<td>${item.data1}</td>
				<td>${item.data2}</td>
				<td>${item.data3}</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<hr />
	<h2>문제2) 아래의 링크를 클릭 했을 시 테이블에 쿼리 데이터를 저장하고 다시 이 페이지로 오는 로직을 작성하세요(5점)</h2>
	<a href="${pageContext.request.contextPath}/example2/result1?data1=aaa1&data2=aaa2&data3=aaa3">이동</a>
	<hr />
	<h2>문제3) 아래의 칸에 데이터를 입력하여 보냈을 시 테이블에 해당 데이터를 저장하고 다시 이 페이지로 오는 로직을 작성하세요(5점)</h2>
	<form action="${pageContext.request.contextPath}/example2/result2" method="post">
		<label for="data1">data1</label>
		<input type="text" name="data1" id="data1" />
		<br />
		<label for="data2">data2</label>
		<input type="text" name="data2" id="data2" />
		<br />
		<label for="data3">data3</label>
		<input type="text" name="data3" id="data3" />
		<br />
		<button>전송</button>
	</form>
	<hr />
	<h2>문제4) 아래의 칸에 데이터를 입력하여 보냈을 시 비동기 통신을 활용하여 테이블에 해당 데이터를 저장하고 위 테이블의 데이터를 갱신하세요(5점)</h2>
	<form action="${pageContext.request.contextPath}/example2/result3" method="post">
		<label for="data1">data1</label>
		<input type="text" name="data1" id="testdata1" />
		<br />
		<label for="data2">data2</label>
		<input type="text" name="data2" id="testdata2" />
		<br />
		<label for="data3">data3</label>
		<input type="text" name="data3" id="testdata3" />
		<br />
		<button id="btn">전송</button>
	</form>
	<script type="text/javascript">

	document.getElementById("btn").addEventListener("click",function(e){
	e.preventDefault();
	let testdata1 = document.getElementById("testdata1").value;
	let testdata2 = document.getElementById("testdata2").value;
	let testdata3 = document.getElementById("testdata3").value;

	let simple_data = {data1:testdata1,data2:testdata2,data3:testdata3};

	fetch("${pageContext.request.contextPath}/example2/result3",{
	method : "POST",
	headers : {"Content-Type" : "application/json"},
	body : JSON.stringify(simple_data)
	}).then(response => response.json())
	.then(data => {
		location.href="${pageContext.request.contextPath}/example2";
	}).catch(data => {
		alert("에러 정보 data : "+data);
	})
	});
	</script>
	
	<hr />
	<h2>문제5) 아래의 칸에 데이터를 입력하여 id값에 해당하는 데이터를 수정하고 다시 이 페이지로 오는 로직을 작성하세요(5점)</h2>
	<form action="${pageContext.request.contextPath}/example2/result4" method="post">
		<label for="id">id</label>
		<input type="text" name="id" id="id" />
		<br />
		<label for="data1">data1</label>
		<input type="text" name="data1" id="data1" />
		<br />
		<label for="data2">data2</label>
		<input type="text" name="data2" id="data2" />
		<br />
		<label for="data3">data3</label>
		<input type="text" name="data3" id="data3" />
		<br />
		<button>전송</button>
	</form>
	<hr />
	<h2>문제6) 아래의 칸에 데이터를 입력하여 data1값에 해당하는 데이터를 수정하고 다시 이 페이지로 오는 로직을 작성하세요(5점)</h2>
	<form action="${pageContext.request.contextPath}/example2/result5" method="post">
		<label for="data1">data1</label>
		<input type="text" name="data1" id="data1" />
		<br />
		<label for="data2">data2</label>
		<input type="text" name="data2" id="data2" />
		<br />
		<label for="data3">data3</label>
		<input type="text" name="data3" id="data3" />
		<br />
		<button>전송</button>
	</form>
	<hr />
	<h2>문제7) 아래의 칸에 id를 입력하여 example2/result/result1.jsp 페이지로 간 다음 해당 페이지에서 수정 로직을 띄운 후 다시 example2/index.jsp 페이지로 돌아오는 로직을 작성하세요(10점)</h2>
	<form action="${pageContext.request.contextPath}/example2/move6" method="post">
		<label for="id">id</label>
		<input type="text" name="id" id="id" />
		<br />
		<button>전송</button>
	</form>
	<hr />
	<h2>문제8) 아래의 칸에 id를 입력하여 해당 아이디의 데이터 열을 삭제하세요(5점)</h2>
	<form action="${pageContext.request.contextPath}/example2/result7" method="post">
		<label for="id">id</label>
		<input type="text" name="id" id="id" />
		<br />
		<button>전송</button>
	</form>
	<hr />
	<h2>문제9) 아래의 칸에 data1,data2,data3를 입력하여 해당 입력값과 같은 값을 가지고 있는 데이터 열을 삭제하세요(각 데이터는 and 조건입니다)(5점)</h2>
	<form action="${pageContext.request.contextPath}/example2/result8" method="post">
		<label for="data1">data1</label>
		<input type="text" name="data1" id="data1" />
		<br />
		<label for="data2">data2</label>
		<input type="text" name="data2" id="data2" />
		<br />
		<label for="data1">data3</label>
		<input type="text" name="data3" id="data3" />
		<br />
		<button>전송</button>
	</form>
	
</body>
</html>