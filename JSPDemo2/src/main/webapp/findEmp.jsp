<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="Entity.*,Dao.*,jdbcUtil.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>查询员工</title>
<style>
	table{
		border:1px solid red;
		border-collapse:collapse;
	}
	td{
		border:1px solid red;
	}
</style>
</head>
<body>
	<table>     
		<tr>
			<td>编号</td>
			<td>姓名</td>
			<td>职位</td>
			<td>薪资</td>
		</tr>
		<%
		EmpDao dao=new EmpDao();
		List<Emp> list=dao.findAll();
		for(Emp e:list){
		%>
		<tr>
			<td><%=e.getEmpno() %></td>
			<td><%=e.getName() %></td>
			<td><%=e.getJob() %></td>
			<td><%=e.getSal() %></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>