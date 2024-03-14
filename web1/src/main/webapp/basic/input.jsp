<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%-- jsp 주석
java code 는 <% %>안에 작성(위치는 노상관)

 --%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
 <% 
    // for(int i = 1; int < 11; i++) {
    //     out.print(i);
    // }                
    request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id")
    String name= request.getParameter("name");
    String [] dog = request.getParameter("dog");
 %>
 <ul>
    <li> id : <% = id %></li>
    <li> name : <% = name %></li>
    <li> name : <% = out.print(name) %></li>
    <%
        for (Strign dog : dogs) {
            out.print("<li> dog : " + dog + "</li>");
        }
    %>
    
 </ul>
</body>
</html>