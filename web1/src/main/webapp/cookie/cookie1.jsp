<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%

    // cookie
    // client에 보관, cookie 만료기간 설정, request 들어올 때 cookie 가져올 수 있음.

    response.addCookie(new Cookie("name", "John"));
    response.addCookie(new Cookie("gender", "Male"));
    response.addCookie(new Cookie("age", "30"));


%>

<h3>cookie data</h3>
<a href="getCookie.jsp">check cookies</a>