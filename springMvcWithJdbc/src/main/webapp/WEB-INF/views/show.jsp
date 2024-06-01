<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,springMvcWithJdbc.entity.Emp"%>

<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
  <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%  int count=0; 
List<Emp> empData = (List<Emp>)request.getAttribute("empListData");
count=empData.size();
  
%>
    <h3 style="text-align: center;"><u>Emp Data</u></h3>
    <h3 style="text-align: center;"><u>Total Count <%= count %></u></h3>
    
	<table border="2">
		<tr>
			<th>UserId</th>
			<th>UserName</th>
			<th>UserCity</th>

		</tr>
		<%
		
		for (Emp emp : empData) 
		{
		%>
		
		  
		<tr>
			<td><%=emp.getId() %></td>
			<td><%=emp.getName() %></td>
			<td><%=emp.getCity() %></td>
		</tr>
		<%
		}
		%>
		
	</table>
	
</body>
</html>