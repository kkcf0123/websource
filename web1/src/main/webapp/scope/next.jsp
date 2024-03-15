<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%
    // id name age
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    
    // String id = (String)session.getAttribute("id");
    // String name = (String)session.getAttribute("name");
    // String age = (String)session.getAttribute("age");

%>

<h3> next.jsp </h3>
<h3> id : <%=id%> </h3>
<h3> name : <%=name%> </h3>
<h3> age : <%=age%> </h3>

<h3>
    <a href = "next2.jsp">next page</a>
</h3>