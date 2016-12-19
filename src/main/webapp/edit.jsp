<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>编辑页面</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/UpdateServlet"
		method="post">
		<table border=1>
			<tr>
				<th>title</th>
				<th>description</th>
				<th>language
			</tr>
			</tr>
			<tr>
				<td><input type="text"
					value="<%=request.getSession().getAttribute("title")%>"
					name="title"></td>
				<td><input type="text"
					value="<%=request.getSession().getAttribute("description")%>"
					name="description"></td>
				<td><input type="text"
					value="<%=request.getSession().getAttribute("name")%>" name="name"></td>
			</tr>


		</table>
		<br /> <input type="submit" value="确定">
	</form>
</body>
</html>