<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%-- <%@ page import = "cart"%> --%>
<%@ page import = "java.util.ArrayList"%>
<%
    // 단일
    // String product = (String)session.getAttribute("product");

    // 복수
    ArrayList<String> products = (ArrayList<String>) session.getAttribute("products");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h3>cart list</h3>
    <ul>
        <% for(String product:products) {%>
            <li><%=product%></li>
        <% }%>
    </ul>
    <div>
        <a href = "/cart/cart.html"> choose product </a>
    </div>
    <div>
        <a href = "/cart/delete.jsp"> clear cart </a>
    </div>
</body>
</html>