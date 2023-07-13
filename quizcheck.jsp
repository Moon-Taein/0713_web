<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정답 확인</title>
</head>
<body>
	<%
		List<String> answer = new ArrayList<>();
		answer.add("셀레브리티");
		answer.add("사냥개들");
		answer.add("D.P.");
		
		request.setCharacterEncoding("utf-8");
		String userAnswer = request.getParameter("userAnswer");
		
		String num = request.getParameter("num");
		int i = Integer.parseInt(num);
		String selected = answer.get(i);
	%>
	<p>사용자 입력값 확인: <%= userAnswer %></p>
	<p>문제 번호 확인: <%= num %></p>
	<%
		if (userAnswer.equals(selected)) {
			i++;
		}
		if (i == 3) {
			response.sendRedirect("pass.jsp");
		} else {
			response.sendRedirect("quiz.jsp?num=" + i);
		}
	%>
</body>
</html>






