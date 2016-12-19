<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import=" java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>列表显示界面</title>
<%
	request.setCharacterEncoding("utf-8");
	Object obj1 = request.getAttribute("film_id");
	List<String> list1 = new ArrayList<String>();
	list1 = (List) obj1;
	Object obj2 = request.getAttribute("title");
	List<String> list2 = new ArrayList<String>();
	list2 = (List) obj2;
	Object obj3 = request.getAttribute("description");
	List<String> list3 = new ArrayList<String>();
	list3 = (List) obj3;
	Object obj4 = request.getAttribute("name");
	List<String> list4 = new ArrayList<String>();
	list4 = (List) obj4;
%>
<script type="text/javascript">
function delete()
{
	
	
	}
</script>
</head>
<body>

	<table border=2>

		<% for(int i=0;i<list1.size();i++) {%>
		<tr>
			<th>film_id</th>
			<th>title</th>
			<th>description</th>
			<th>name</th>
			<th></th>
			<th></th>
		</tr>
		<tr>
			<td><%= list1.get(i) %></td>
			<td><%= list2.get(i)%></td>
			<td><%= list3.get(i)%></td>
			<td><%= list4.get(i)%></td>
			<td><button id="button" value="删除" onclick=" return delete()">删除</button></td>
			<td><a href="edit.jsp">编辑页面</a>
			<td></br> <% request.getSession().setAttribute("film_id",list1.get(i));
       request.getSession().setAttribute("title",list2.get(i));
       request.getSession().setAttribute("description",list3.get(i));
       request.getSession().setAttribute("name",list4.get(i));
    } %>
		</tr>
		</tr>


	</table>

</body>
</html>