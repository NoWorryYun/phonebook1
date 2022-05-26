<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.javaex.vo.PersonVo" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="java.util.List" %>
<%
	//파라메터에서 값 꺼내오기
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	/*
	System.out.println(name);
	System.out.println(hp);
	System.out.println(company);
	*/
	
	//Person 객체만들기
	PersonVo personVo = new PersonVo(name, hp, company);
	
	//PhoneDao 객체만들기
	PhoneDao phoneDao = new PhoneDao();
	System.out.println(personVo);
	
	
	//personVo 메모리에 올린다
	int count = phoneDao.personInsert(personVo);
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
	
	test

</body>
</html>