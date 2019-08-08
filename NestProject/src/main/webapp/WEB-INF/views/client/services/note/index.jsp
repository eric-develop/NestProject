<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href="${pageContext.request.contextPath}/note/note.do?mno=1&yn=Y">휴지통으로 가기</a></li>
		<li><a href="${pageContext.request.contextPath}/note/note.do?mno=1&yn=N">노트로 가기</a></li>
		<li><a href="${pageContext.request.contextPath}/notebook/notebook.do?mno=1">노트북메인</a></li>
		<li><a href="${pageContext.request.contextPath}/note/newNote.do">노트생성</a></li>
	</ul>
	
</body>
</html>