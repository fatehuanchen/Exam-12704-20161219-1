<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增页面</title>
</head>
<body>
<form action="<%=request.getContextPath() %>/AddServlet" method="post">
输入           film_id:<input type="text" name="film_id" ><br/>
输入description:<input type="text" name="description" ><br/>
选择        language:<br/>
<input type="radio" name="language" value="English" checked >English<br/>
                <input type="radio" name="language" value="Italian" >Italian<br/>
                <input type="radio" name="language" value="Japanese" >Japanese<br/>
                <input type="radio" name="language" value="language" >Mandarin<br/>
                <input type="radio" name="language" value="Mandarin" >French<br/>
                <input type="radio" name="language" value="German" >German<br/>
                
<input type="submit"  value="确定">
</form>
</body>
</html>