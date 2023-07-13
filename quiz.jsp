<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz</title>
</head>
<body>
<%
	// 문제 3개. 문자열 컬렉션
	List<String> quiz = new ArrayList<>();
	quiz.add("유명해지기만 하면 돈이 되는 세계에 뛰어든 \'아리\'가 마주한 셀럽들의 화려하고도 치열한 민낯을 그린 넷플릭스 오리지널 시리즈 드라마(2023) 제목은 무엇일까요?");
	quiz.add("사람 목숨보다 돈이 먼저인 사채업의 세계에 휘말린 두 청년이 거대한 악의 세력에 맞서 목숨 걸고 싸우는 이야기를 그린 웹툰원작 기반 넷플릭스 시리즈(2023) 제목?");
	quiz.add("군무 이탈 체포조(D.P.) 준호와 호열이 여전히 변한 게 없는 현실과 부조리에 끊임없이 부딪치며 벌어지는 이야기. 제목?");

	int num = 0;
	String numParam = request.getParameter("num");
	if (numParam != null) {
		num = Integer.parseInt(numParam);
	}
	String selected = quiz.get(num);
%>
<form action="quizcheck.jsp">
	<div>
		<%= selected %>
	</div>
	<input type="text" name="userAnswer">
	<input type="hidden" name="num" value="<%= num %>">
	<input type="submit" value="정답확인">
</form>
</body>
</html>






