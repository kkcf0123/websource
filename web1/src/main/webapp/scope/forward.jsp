<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%
// ScopeServlet(info2.jsp)에서 할 수 있는 작업들을 forward.jsp에서 할 수 있게됨
    String id = request.getParameter("id");


%>

<%-- info2.html
info2.jsp
forward --%>


<h3>forward.jsp</h3>

<h4>id : <%=id%></h4>