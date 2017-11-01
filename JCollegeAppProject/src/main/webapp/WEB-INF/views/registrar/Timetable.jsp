<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="../PageDirectives.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Timetable</title>
<link href="../css/style.css" rel="stylesheet" media="all">
</head>

<body>

	<ul>
		<div class="img">
			<IMG HEIGHT="50" WIDTH="80"
				SRC=http://www.pathwaysnetwork.co.uk/images/jeancarr-jc.jpg>
		</div>
		<h2>Judge College</h2>

		<form align="right" name="form1" method="post" action="../logout">
			<label class="logoutLblPos"> <input name="submit2"
				type="submit" id="submit2" value="Logout">
			</label>
		</form>
	</ul>

	<ul>
		<li><a href="MyProfile">My Profile</a></li>
		<li><a href="SystemUsers">System Users</a></li>
		<li><a href="Courses">Courses</a></li>
		<li><a href="Departments">Departments</a></li>
		<li><a href="Timetable">Timetable</a></li>
		<li><a href="Grades">Grades</a></li>
	</ul>

	<div style="margin-left: 25%; padding: 1px 16px; height: 1000px;">

	<h2>Timetable</h2>
	
	<table>
		<tr>
			<th>Username</th>
			<th>Full Name</th>
		</tr>
		<c:forEach items="${userList}" var="u">
				<tr>
					<td><a href="userTimetable?username=${u.username}">${u.username}</a></td>
					<td>${u.firstName} ${u.lastName}</td>
				</tr>

			</c:forEach>
	</table>
	
	</div>
</body>
</html>