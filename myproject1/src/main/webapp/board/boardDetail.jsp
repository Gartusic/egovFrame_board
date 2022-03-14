<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
	<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
	<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<%--     <% pageContext.setAttribute("newline", "\n"); %>
    <c:set var="content" value="${fn:replace(boardVO.content,newline,'<br>') }"/>
    --%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-1.12.4.js"
  integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
  crossorigin="anonymous"></script>
  <script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
  integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
  crossorigin="anonymous"></script>
</head>

<style>
body{
	font-size:9px;
}
button{
	font-size:9px;
}
table{
	width:600px;
	border-collapse:collapse;
}
th,td{
	border:1px solid #cccccc;
}
.input1{
	width:98%;
}
</style>

<script>

	function bdelete(){
		var formData = $("#dfrm").serialize();
		$.ajax({
			type:"DELETE",
			data:formData,
			url:"/boardDelete.do/{unq}",
			
			success: function(data){
				if(data == "ok"){
					alert("삭제완료");
					location.replace('/boardList.do');
				} else{
					alert("삭제실패");
					return false;
				}
			},
			error: function(){
				alert("오류발생");
			}
		});
		location.replace('/boardList.do');
	}
	
	</script>

<body>
 	<form name="dfrm" id="dfrm" method="post" action="">
		<caption>게시판 상세화면</caption>
		<a href="/boardList.do">뒤로</a>
		<table>
			<tr>
			<!-- laber for 뒤에는 name을 기입하면 label을 클릭했을 때 자동으로 커서 이동시켜줌 -->
				<th width="20%"><label for="title">제목</label></th>
				<td width="80%">${boardDetail.title}</td>
			</tr>
 			<tr>
				<th><label for="pass">작성일</label></th>
				<td>${boardDetail.rdate}</td>
			</tr> 
			<tr>
				<th><label for="name">글쓴이</label></th>
				<td>${boardDetail.name}</td>
			</tr>
			<tr>
				<th><label for="content">내용</label></th>
				<td height="50">${boardDetail.content}
					<input type="hidden" name="unq" value="${boardDetail.unq}">
				</td>
			</tr>
			<tr>
				<th colspan="2">
				<button type="button" onclick="location='boardModifyWrite.do?unq=${boardDetail.unq}'">수정</button>
				<button type="button" onclick="location='passWrite.do?unq=${boardDetail.unq}'">삭제</button>
				</th>
			</tr>
		</table>
 	</form>
</body>
</html>