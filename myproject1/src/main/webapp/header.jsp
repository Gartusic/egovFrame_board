<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
    

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판입니다.</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo:wght@400;700&display=swap" rel="stylesheet">
<link href="/css/egovframework/board.css" rel="stylesheet" type="text/css" />
<script
  src="https://code.jquery.com/jquery-1.12.4.js"
  integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
  crossorigin="anonymous"></script>
  <script
  src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"
  integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30="
  crossorigin="anonymous"></script>
</head>
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
					location.replace('/boardListPaging.do');
				} else{
					alert("삭제실패");
					return false;
				}
			},
			error: function(){
				alert("오류발생");
			}
		});
		location.replace('/boardListPaging.do');
	}
	
	
	
	
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
					location.replace('/boardListPaging.do');
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
		location.replace('/boardListPaging.do');
	}
	
	
	/* 페이징 - 게시할 줄 갯수 바꾸기 */
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="boardListPaging.do?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
	
	
	
	
	
	
	</script>

<body>
	<h1><a href="/boardListPaging.do">HOME</a></h1>