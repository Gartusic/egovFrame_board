<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호를 입력하세요.</title>
</head>

<script>
	function dl_submit(){
		$.ajax({
			type:"POST",
			data:sendData,
			url:"boardDelete.do",
			dataType:"text",
			
			success: function(result){
				if(result == "1"){
					alert("삭제완료");
					location = "boardList.do";
				} else if(result == "-1"){
					alert("암호가 일치하지 않습니다.");
				} else{
					alert("삭제실패\n관리자에게 연락주세요.")
				}
			},
			error: function(){ 
				alert("오류발생");
			}
		})
		
	}
</script>


<body>
	<h2>비밀번호를 입력하세요. </h2>
	<form name="dlfrm" id="dlfrm" method="post" action="">
		<input type="password" id="pass" name="pass">
		<button type="button" onclick="dl_submit();">확인</button>
	</form>
</body>
</html>