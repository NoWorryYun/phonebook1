<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@ page import="java.util.List"%>
<%@ page import="com.javaex.dao.PhoneDao"%>
<%@ page import="com.javaex.vo.PersonVo"%>

<%
	PhoneDao phoneDao = new PhoneDao();
	List<PersonVo> personList = phoneDao.getPersonList();
	
	System.out.println(personList);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>등록폼</h2>
	
	<%for(int i = 0 ; i < personList.size() ; i++){%>
		<form action="./delete.jsp" method="get">
		<table border="1">
			<tr>
				<td>이름(name)</td>
				<td><%=personList.get(i).getName() + "(" + personList.get(i).getPersonId() + ")"%></td>
			</tr>
			<tr>
				<td>핸드폰(hp)</td>
				<td><%=personList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td>회사(company)</td>
				<td><%=personList.get(i).getHp() %></td>
			</tr>
			<tr>
				<td></td>
				<td><button type="submit" name="personId" value="<%=personList.get(i).getPersonId()%>">삭제</button></td>
			</tr>
	</table>
	</form>
	<br>
	<%}%>
	
</body>
</html>