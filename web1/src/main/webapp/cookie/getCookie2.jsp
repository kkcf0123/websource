<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%-- <% %> java code
<%= %> html code + java code
<%! %> java code -> 변수선언, 메소드선언(잘 사용안함) --%>
<%
    Cookie[] cookies = request.getCookies();
    String name = "";
    String value = "";

    for(Cookie c : cookies){
        if(c.getName().equals(name)) {
            name = c.getName();
            value = c.getValue();        
        }
    }

%>

<h4>이름 : <%=name%></h4>
<h4>값 : <%=value%></h4>