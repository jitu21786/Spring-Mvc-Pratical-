<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <h3> this is the Collection</h3>
  <h3>Getting Collection Data</h3>
	<%=request.getAttribute("number")%>
	<hr>

	<%
	List<String> list = (List<String>)request.getAttribute("listData");
	for (String data : list)
		out.println(data);
	%>
</body>
</html>