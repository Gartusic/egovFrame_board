<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/header.jsp" %>
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
				<tr>
					<td><c:out value="${cnt }" /></td>
					<td><a href="/boardDetail.do?unq=${result.unq }"><c:out value="${result.title }" /></a></td>
					<td><c:out value="${result.name }" /></td>
					<td><c:out value="${result.rdate }" /></td>
					<td><c:out value="${result.hits }" /></td>
				</tr>
			<c:set var="cnt" value="${cnt+1}"/>
		</c:forEach>
		<tr>
			<th colspan="5">
				<form action="boardWrite.do" method="get">
					<button type="submit">글쓰기</button>
				</form>
			</th>
		</tr>
	</table>
</body>
</html>