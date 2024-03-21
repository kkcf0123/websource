<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="dao.ToDoDao"%>
<%@ page import="dto.ToDoDto"%>

<%
    request.setCharacterEncoding("utf-8");

    // client가 입력한 todo data get
    String no = request.getParameter("no");

    // set db
    ToDoDao dao = new ToDoDao();
    ToDoDto todo = dao.getRow(no);
    
    // show up todo to read.jsp
    // scope 
    // session, request
    request.setAttribute("todo", todo);

    // 화면이동(list)
    // sendRedirect, forword(request랑 짝임)
    
    // response.sendRedirect("list.jsp");
    pageContext.forward("read.jsp");

%>