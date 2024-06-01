<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="bean.EmpData"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<h3>this is EmpData Record</h3>
<body>
	<%
	   EmpData emp=(EmpData)request.getAttribute("empData");
	   out.println(emp.getEmp_id());
	   out.println(emp.getEmp_name());
	%>
<!-- 	getting the without key object
 -->
 
</body>
</html>