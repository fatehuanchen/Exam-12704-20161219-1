<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="<%=request.getContextPath() %>/ShowServlet" method="post">
		<center><input type="submit" id="01" value="进入列表显示页面"></center><br />
		<br /> <a href="add.jsp"><center>进入新增页面</center></a>

	</form>



</body>
</html>