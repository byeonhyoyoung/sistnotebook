<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Gaegu&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Noto+Serif+KR&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h2 class="alert alert-info">결과출력</h2><br>
	이름: ${dto.name }<br>
	좋아하는 색상: ${dto.color }
	<div style="width: 30px; height: 30px; background: ${dto.color}"></div>
	<br>
	취미: 
	<c:if test="${empty dto.hobby }">취미없음</c:if>
	<c:if test="${!empty dto.hobby }">
		<c:forEach var="h" items="${dto.hobby }">
			[${h}]
		</c:forEach>
	</c:if><br>
	가장 재미있는 언어: ${dto.language }<br>
</body>
</html>