<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detail</title>
<style>
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말 삭제하시겠습니까? " + id + "?");
		if (a)
			location.href = 'deleteok/' + id;
	}
</script>
</head>
<body>
	<input type="hidden" name="seq" value="${u.seq}" />
	<table>
		<tr>
			<td>Title:</td>
			<td>${u.title}</td>
		</tr>
		<tr>
			<td>Writer:</td>
			<td>${u.writer}</td>
		</tr>
		<tr>
			<td>Content:</td>
			<td>${u.content}</td>
		</tr>
		<tr>
			<td><a href="csee">View All Records</a></td>
			<td><a href="../editform/${u.seq}">Edit</a></td>
			<td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
		</tr>
	</table>
</body>
</html>