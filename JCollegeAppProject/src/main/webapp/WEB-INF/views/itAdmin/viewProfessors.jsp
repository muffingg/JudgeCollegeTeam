<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="../PageDirectives.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<title>Select Professor</title>
</head>
<body>

     <h2>All Professors</h2>

     <a href="/JCollegeAppProject/logout">Logout</a>

     <br /> ${username}

     <table>
           <tr>

                <th>Professor User Name</th>
                <th>Professor password</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Phone</th>
                <th> Fax </th>
           </tr>

           <c:forEach items="${professorList}" var="p">
                <tr>
                     <th><a href="editProfessor?username=${p.username}">${p.username}</a></th>
                     <th>${p.password}</th>
                     <th>${p.firstName}</th>
                     <th>${p.lastName}</th>
                     <th>${email}</th>
                     <th>${p.address}</th>
                     <th>${p.phone}</th>
                     <th>${p.fax}</th>
                     <th>${role}</th>
                     
     
           </c:forEach>
     
<a href="HomePage"> Back To Home  </a>

</body>
</html>