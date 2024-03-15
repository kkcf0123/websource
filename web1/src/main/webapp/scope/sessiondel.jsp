<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%
    // target session delete
    session.removeAttribute("name");
    
    // move page
    response.sendRedirect("sessiontest.jsp");
%>