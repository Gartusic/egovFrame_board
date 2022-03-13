<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><a href="/">HOME</a></h1>
	<table>
		<tr align="center">
			<th width="15%">번호</th>
			<th width="45%">제목</th>
			<th width="15%">글쓴이</th>
			<th width="15%">등록일</th>
			<th width="15%">조회수</th>
		</tr>
		<c:set var="cnt" value="1" />
		<c:forEach var="result" items="${resultList }">
			<form action="boardDetail.do" method="post">
				<tr>
					<td><c:out value="${cnt }" /></td>
					<td><c:out value="${result.title }" /></td>
					<td><c:out value="${result.name }" /></td>
					<td><c:out value="${result.rdate }" /></td>
					<td><c:out value="${result.hits }" /></td>
				</tr>
				<button type="submit">보기</button>
			</form>
			<c:set var="cnt" value="${cnt+1}"/>
		</c:forEach>
	
	</table>
	<div>
		<form action="boardWrite.do" method="get">
			<button type="submit">글쓰기</button>
		</form>
	</div>
</body>
</html>