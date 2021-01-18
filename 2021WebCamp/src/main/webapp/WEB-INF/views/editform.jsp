<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

	<h1>Edit Form</h1>
	<form method="post" action="../editok">
		<input type="hidden" name="seq" value="${u.seq}" />
		<table>
			<tr>
				<td>Title:</td>
				<td><input type="text" name="title" value="${u.title}" /></td>
			</tr>
			<tr>
				<td>Writer:</td>
				<td><input type="text" name="writer" value="${u.writer}" /></td>
			</tr>
			<tr>
				<td>Content:</td>
				<td><input type="text" name="content" value="${u.content}" /></td>
			</tr>
			<tr>
				<td><a href="../csee">View All Records</a></td>
				<td><input type="submit" value="edit" /></td>
			</tr>
		</table>

	</form>

</body>
</html>