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
<%@ include file="/header.jsp" %>

 	<form name="dfrm" id="dfrm" method="post" action="boardDelete.do">
		<div class="box1">
			<h3>게시판 상세화면 </h3>
			<p><a href="/boardList.do">
				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-90deg-left" viewBox="0 0 16 16">
  				<path fill-rule="evenodd" d="M1.146 4.854a.5.5 0 0 1 0-.708l4-4a.5.5 0 1 1 .708.708L2.707 4H12.5A2.5 2.5 0 0 1 15 6.5v8a.5.5 0 0 1-1 0v-8A1.5 1.5 0 0 0 12.5 5H2.707l3.147 3.146a.5.5 0 1 1-.708.708l-4-4z"/>
				</svg>
			</a></p>
		</div>
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
				<td height="50">${boardDetail.content}</td>
			</tr>
			<tr>
				<th colspan="3">
				<button type="button" onclick="location='boardModifyWrite.do?unq=${boardDetail.unq}'">수정</button>
				<button type="submit">삭제</button>
				<input type="hidden" name="unq" id="unq" value="${boardDetail.unq}">
				<input type="hidden" name="pass" id="pass" value="${boardDetail.pass}">
				<p>암호: <input value="" type="password" name="userpass" id="userpass"></p>
				</th>
			</tr>
		</table>
 	</form>
</body>
</html>