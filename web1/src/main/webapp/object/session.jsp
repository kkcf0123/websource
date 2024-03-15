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
        // session
        // stateless <==> stateful
        // it doesn't saves client status
        // if u need save about client status
        // 1) server side - session -> httpSession session
        // 2) client side - cookie / browser
// HttpServletRequest request
// HttpServletResponse response

    %>
        <h2>test session</h2>
        <ul>
            <li> isNew(): <%=session.isNew()%></li>
            <li> 생성시간: <%=session.getCreationTime()%></li>
            <li> 최종접속시간: <%=session.getLastAccessedTime()%></li>
            <li> session ID: <%=session.getId()%></li>
        </ul>

</body>
</html>