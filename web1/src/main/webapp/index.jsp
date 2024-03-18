<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ page import="member.MemberDTO" %>
<%
  //session scope에 담겨있는 elements get
  MemberDTO loginDto = (MemberDTO)session.getAttribute("loginDto");
%>
<html>
<body>
<h2>Hello World!</h2>
<h3>안녕하세요</h3>

<ul>

    <% if(loginDto == null) { %>
        <li><a href = "/member/login.jsp">login</a></li>
        <% } else { %>
        <li><a href = "/logout">logout</a></li>
    <% }%>

    <%-- <li><a href="member/login.jsp"> login </li> --%>
    <%-- <li><a href="/logout"> logout </li> --%>
    <li><a href="basic/add.jsp"> calc add </li>
    <li><a href="basic/add2.jsp"> calc  </li>
</ul>
</body>
</html>
