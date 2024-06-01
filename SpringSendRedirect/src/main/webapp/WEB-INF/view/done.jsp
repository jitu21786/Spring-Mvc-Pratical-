<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" import="controller.entity.StudentEntity"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Id is:-- ${data.id} Name is:--${data.name} CIty is:--${data.city}

	 <hr>
    <h3>another way</h3>
    <%
    // Use the data object from the request attribute
    StudentEntity data = (StudentEntity) request.getAttribute("data");
    if (data != null) {
        int id = data.getId();
        String name = data.getName();
        String city = data.getCity();
    %>
        <%= id %> <br/>
        <%= name %> <br/>
        <%= city %> <br/>
    <%
    } else {
        out.println("Data not found in request scope.");
    }
    %>
</body>
</html>