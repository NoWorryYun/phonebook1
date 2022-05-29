<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%

	//파라미터 꺼내기
	int id = Integer.parseInt(request.getParameter("id"));
	System.out.println(id);
	
	//id 데이터 가져오기
	PhoneDao phoneDao = new PhoneDao();
	PersonVo personVo = phoneDao.getPerson(id);
	



%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전화번호부</h1>
	<h2>수정폼</h2>
	<p>전화번호를 수정하려면<br>
		아래 항목을 기입하고 수정 버튼을 눌러주세요.</p>
	<form action="./update.jsp" method="get">
	이름(name) <input type="text" name="name" value="<%=personVo.getName()%>"><br>
	핸드폰(hp) <input type="text" name="hp" value="<%=personVo.getHp()%>"><br>
	회사(company) <input type="text" name="company" value="<%=personVo.getCompany()%>"><br>
	pk(id) <input type="hidden" name="id" value="<%=personVo.getPersonId()%>"><br>
	<button type="submit">수정</button>
	</form>
</body>
</html>