<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%
	//파라메터에서 값 꺼내오기
	int personId = Integer.parseInt(request.getParameter("personId"));
	
	/*
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	//Person 객체만들기
	
	//PhoneDao 객체만들기
	PhoneDao phoneDao = new PhoneDao();
	
	
	//personVo 메모리에 올린다
	int count = phoneDao.personDelete(personId);
	System.out.println(count);
	
	//주소창에 (주소) 엔터
	response.sendRedirect("./list.jsp");
	
	//////////////////////////////////////////////////	
	//리스트 가져와서 html 뿌리기
	//////////////////////////////////////////////////
	//List<PersonVo> personList = phoneDao.getPersonList();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>