<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%-- <% %> java code
<%= %> html code + java code
<%! %> java code -> 변수선언, 메소드선언(잘 사용안함) --%>

<%
    private String getCookieValue(Cookie[] cookies, String name){
        if(cookies==null) return null;
        for(Cookie c : cookies){
            if(c.getName().equals(name)) return c.getValue();
       }
       return null;
    }
%>

<%
    Cookie[] cookies = request.getCookies();
%>

<h4>이름 : <%=getCookieValue(cookies,"name")%></h4>
<h4>성별 : <%=getCookieValue(cookies,"gender")%></h4>
<h4>나이 : <%=getCookieValue(cookies,"age")%></h4>