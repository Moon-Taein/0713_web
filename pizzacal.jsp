<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.greenart.pizza.PizzaCalculator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>피자 가격 계산</title>
</head>
<body>
	<%
		List<String> errors = new ArrayList<>();
		String pizza = request.getParameter("pizza");
		String[] option = request.getParameterValues("option");
		String quantity = request.getParameter("quantity");
		
		if (pizza == null || pizza.trim().equals("")) {
			errors.add("피자를 선택해주세요");
		}
		if (quantity == null || quantity.trim().equals("")) {
			errors.add("수량을 입력해주세요");			
		}
		
		if (errors.size() == 0) {
			PizzaCalculator cal = new PizzaCalculator();
			Integer q = Integer.valueOf(quantity);
			int sum = cal.calculate(pizza, option, q);
	%>
			<p>계산된 피자 가격: <%= sum %></p>
	<%
		} else {
			for (String message : errors) {
	%>
				<p><%= message %></p>
	<%
			}
		}
	%>
</body>
</html>










