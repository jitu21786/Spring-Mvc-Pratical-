<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Map<Integer, String> mapData = (Map<Integer, String>) request.getAttribute("mapData");
	out.println(mapData);
	%>

	<h3>------------------Travserse Using for each loop</h3>
<html>
<table border="2">
	<tr>
		<th>Key</th>
		<th>Value</th>
	</tr>

	<%
	for (Map.Entry<Integer, String> entry : mapData.entrySet()) {
	%>
	<tr>
		<td><%=entry.getKey()%></td>
	
		<td><%=entry.getValue()%></td>
	</tr>
	<%
	}
	%>
</table>
</html>

</body>
</html>