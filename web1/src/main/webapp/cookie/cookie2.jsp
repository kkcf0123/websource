<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%
    // cookie
    // client에 보관, cookie 만료기간 설정, request 들어올 때 cookie 가져올 수 있음.


    Cookie c = new Cookie("name", "Hong");
    c.setMaxAge(600); // 쿠키만료시간
    response.addCookie(c);
%>

<h3>cookie data</h3>
<a href="getCookie2.jsp">check cookies</a>