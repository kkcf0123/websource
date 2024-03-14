<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <%
        Int num1 = Integer.parseInt(request.getParameter("num1"));
        Int num2 = Integer.parseInt(request.getParameter("num2"));
        String op = request.getParameter("op");
      
        // PrintWriter out = res.getWriter();
        int result = 0;

        // request.setCharacterEncoding("utf-8");

        if (op.equals("+")) {
            result = num1 + num2;
        } else if (op.equals("-")) {
            result = num1 - num2;
        } else if (op.equals("*")) {
            result = num1 * num2;
        } else if (op.equals("/")) {
            result = num1 / num2;
        }
        // out.print(num1 + op + num2 + "=" + result);
    %>
    <h4><%=num1%><%=op%><%=num2%>=<%=reuslt%></h4>
</body>
</html>