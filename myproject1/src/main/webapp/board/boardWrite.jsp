<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/header.jsp" %>

<body>
	<form name="frm" id="frm" method="post">
		<h3>게시판 등록</h3>
		<table>
			<tr>
			<!-- laber for 뒤에는 name을 기입하면 label을 클릭했을 때 자동으로 커서 이동시켜줌 -->
				<th width="20%"><label for="title">제목</label></th>
				<td width="80%"><input type="text" name="title" id="title" class="input1"></td>
			</tr>
			<tr>
				<th><label for="pass">암호</label></th>
				<td><input type="password" name="pass" id="pass"></td>
			</tr>
			<tr>
				<th><label for="name">글쓴이</label></th>
				<td><input type="text" name="name" id="name" value="익명"></td>
			</tr>
			<tr>
				<th><label for="content">내용</label></th>
				<td><textarea name="content" id="content" class="input1">오늘은 어떤가요?</textarea></td>
			</tr>
			<tr>
				<th colspan="2">
				<button type="submit" onclick="fn_submit();">저장</button>
				<button type="reset" onclick="fn_cancel();">취소</button>
				</th>
			</tr>
		</table>
	</form>
</body>
</html>