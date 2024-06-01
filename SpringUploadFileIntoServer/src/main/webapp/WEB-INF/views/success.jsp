<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:if
		test="${fileName.endsWith('.jpg') or fileName.endsWith('.jpeg') or fileName.endsWith('.png') or fileName.endsWith('.gif')}">
		<img src="<c:url value='res/images/${fileName}'/>" width="400px"
			height="400px">
	</c:if>

	 <c:if test="${fileName.endsWith('.mp4')or fileName.endsWith('.mpeg')}">
        <video width="400" height="400" controls class="center-media" autoplay>
            <source src="<c:url value='/res/videos/${fileName}'/>" type="video/mp4">
        </video>
    </c:if>
   
</body>
</html>