<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/header.jsp" %>


<form name="ufrm" id="ufrm" method="post" action="boardModifySave.do">
		<h3>게시판 수정</h3>
		<input type="hidden" name="unq" value="${BoardVO.unq}">
		<table>
			<tr>
			<!-- label for 뒤에는 name을 기입하면 label을 클릭했을 때 자동으로 커서 이동시켜줌 -->
				<th width="20%"><label for="title">제목</label></th>
				<td width="80%"><input value="${BoardVO.title}" type="text" name="title" id="title" class="input1"></td>
			</tr>
			<tr>
				<th><label for="pass">암호</label></th>
				<td><input value="" type="password" name="userpass" id="userpass"></td> <!-- 유저가 입력할 암호 -->
				<td><input value="${BoardVO.pass }" type="hidden" name="pass" id="pass"></td> <!-- 현재 암호 -->
			</tr>
			<tr>
				<th><label for="name">글쓴이</label></th>
				<td><input  value="${BoardVO.name}" type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<th><label for="content">내용</label></th>
				<td><textarea name="content" id="content" class="input1">${BoardVO.content}</textarea></td>
			</tr>
			<tr>
				<th colspan="2">
				<!-- <button type="submit" onclick="fn_submit();return false;">저장</button> -->
				<button type="submit">저장</button>
				<button type="reset" onclick="location='boardDetail.do?unq=${BoardVO.unq}'">취소</button>
				</th>
			</tr>
		</table>
	</form>
</body>
</html>