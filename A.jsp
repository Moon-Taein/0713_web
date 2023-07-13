<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String str = "계산 결과값";

	request.setAttribute("str", str);

	request.getRequestDispatcher("B.jsp")
		.forward(request, response);
%>
