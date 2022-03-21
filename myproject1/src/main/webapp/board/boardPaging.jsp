<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/header.jsp" %>
	<div class="box1">
			<h3>게시판 목록 </h3>
			<select id="cntPerPage" name="sel" onchange="selChange()">
				<option value="5"
					<c:if test="${paging.cntPerPage == 5}">selected</c:if>>5줄 보기</option>
				<option value="10"
					<c:if test="${paging.cntPerPage == 10}">selected</c:if>>10줄 보기</option>
				<option value="15"
					<c:if test="${paging.cntPerPage == 15}">selected</c:if>>15줄 보기</option>
				<option value="20"
					<c:if test="${paging.cntPerPage == 20}">selected</c:if>>20줄 보기</option>
			</select>
	</div><!-- 옵션선택 끝 -->
	<table>
		<tr align="center">
			<th width="15%">번호</th>
			<th width="45%">제목</th>
			<th width="15%">글쓴이</th>
			<th width="15%">등록일</th>
			<th width="15%">조회수</th>
		</tr>
		<c:set var="cnt" value="1" />
		<c:forEach var="result" items="${viewAll }">
				<tr>
					<td><c:out value="${result.unq }" /></td>
					<td><a href="/boardDetail.do?unq=${result.unq }"><c:out value="${result.title }" /></a></td>
					<td><c:out value="${result.name }" /></td>
					<td><c:out value="${result.rdate }" /></td>
					<td><c:out value="${result.hits }" /></td>
				</tr>
		</c:forEach>
		<tr>
			<th colspan="5">
				<form action="boardWrite.do" method="get">
					<button type="submit">글쓰기</button>
				</form>
			</th>
		</tr>
	</table>
	
	<div style="display: block; text-align: center;">		
		<c:if test="${paging.startPage != 1 }">
			<a href="/boardListPaging.do?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&lt;</a>
		</c:if>
		<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
			<c:choose>
				<c:when test="${p == paging.nowPage }">
					<b>${p }</b>
				</c:when>
				<c:when test="${p != paging.nowPage }">
					<a href="/boardListPaging.do?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p }</a>
				</c:when>
			</c:choose>
		</c:forEach>
		<c:if test="${paging.endPage != paging.lastPage}">
			<a href="/boardListPaging.do?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&gt;</a>
		</c:if>
	</div>
</body>
</html>