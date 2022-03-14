<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 수정</title>
</head>

<script>
/* trim() : 공백제거 */
	function up_submit(){
		if($.trim($("#title").val()) == ""){
			alert("제목을 입력해주세요. ");
			$("#title").focus(); // 커서를 집중시킴
			return false;
		}
		
 		$("#title").val($.trim($("#title").val()) );
		
		if($.trim($("#pass").val()) == ""){
			alert("암호를 입력해주세요. ");
			$("#pass").focus();
			return false;
		}
		$("#pass").val($.trim($("#pass").val()) );
		
/* 		if(document.frm.title.value == ""){
			alert("제목을 입력해주세요!");
			document.frm.title.focus();
			return false;
		}
		
		if(document.frm.pass.value == ""){
			alert("암호를 입력해주세요!");
			document.frm.pass.focus();
			return false;
		} */
		//document.frm.submit(); // '동기' 전송방식

	

	/* 비동기 전송방식 */
		var formData = $("#ufrm").serialize(); // #frm 안에 있는 내용을 갖고 오는 함수
		
		$.ajax({
			/* 전송 전 세팅 */
			type:"POST",
			data:formData,
			url:"boardModifySave.do",
			dataType:"text",
			
			/* 전송 후 세팅 */
			success: function(result){
				if(result == "1"){
					alert("저장완료");
					location="boardList.do";
				} else{
					alert("저장실패");
					return false;
				}
			},
			error: function(){
				alert("오류발생");
			}
		});
	};
	function up_cancel(){
		location.replace('/boardDetail.do?unq=1');
	}
	
	</script>

<body>
<form name="ufrm" id="ufrm" method="post" action="">
		<caption>게시판 수정</caption>
		<input type="hidden" name="unq" value="${BoardVO.unq}">
		<table>
			<tr>
			<!-- label for 뒤에는 name을 기입하면 label을 클릭했을 때 자동으로 커서 이동시켜줌 -->
				<th width="20%"><label for="title">제목</label></th>
				<td width="80%"><input value="${BoardVO.title}" type="text" name="title" id="title" class="input1"></td>
			</tr>
			<tr>
				<th><label for="pass">암호</label></th>
				<td><input value="${BoardVO.pass}" type="password" name="pass" id="pass"></td>
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
				<button type="submit" onclick="up_submit();">저장</button>
				<button type="reset" onclick="up_cancel();">취소</button>
				</th>
			</tr>
		</table>
	</form>
</body>
</html>