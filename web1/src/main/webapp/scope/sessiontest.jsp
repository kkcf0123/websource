<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<% 
    // save session
    // session.setAttribute("key", value);
    // check session
    // session.getAttribut("key");
    // target session delete
    // session.removeAttribute("key");
    // all session delete
    // session.invalidate();

    // check session value
    String name = (String)session.getAttribute("name");
    String age = (String)session.getAttribute("age");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <h2> session value : <%=name%> </h2>
    <h2> age value : <%=age%> </h2>
    <div>
        <button type="button"> save session value </button>
        <button type="button"> del session value </button>
        <button type="button"> init session value </button>
    </div>
    <script src = "/js/session.js"></script>
</body>
</html>