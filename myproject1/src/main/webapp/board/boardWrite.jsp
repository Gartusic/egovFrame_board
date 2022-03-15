<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ include file="/header.jsp" %>

<script>
/* trim() : 공백제거 */
	function fn_submit(){
		if($.trim($("#title").val()) == ""){
			alert("제목을 입력해주세요. ");
			$("#title").focus();
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
		var formData = $("#frm").serialize(); // #frm 안에 있는 내용을 갖고 오는 함수
		
		$.ajax({
			/* 전송 전 세팅 */
			type:"POST",
			data:formData,
			url:"boardWriteSave.do",
			dataType:"text",
			
			/* 전송 후 세팅 */
			success: function(data){
				if(data == "ok"){
					alert("저장완료");
					location.replace('/boardList.do');
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
	function fn_cancel(){
		location.replace('/boardList.do');
	}
	
	</script>

<body>
	<form name="frm" id="frm" method="post">
		<caption>게시판 등록</caption>
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
				<td><input type="text" name="name" id="name"></td>
			</tr>
			<tr>
				<th><label for="content">내용</label></th>
				<td><textarea name="content" id="content" class="input1"></textarea></td>
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