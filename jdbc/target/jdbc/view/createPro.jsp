<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ page import="dao.ToDoDao"%>
<%@ page import="dto.ToDoDto"%>

<%
    request.setCharacterEncoding("utf-8");

    // client가 입력한 todo data get
    String title = request.getParameter("title");
    String description = request.getParameter("description");

    // set db
    ToDoDao dao = new ToDoDao();
    ToDoDto inserDto = new ToDoDto();
    inserDto.setTitle(title);
    inserDto.setDescription(description);
    int result = dao.insert(inserDto);


    // 화면이동(list)
    // sendRedirect, forword
    response.sendRedirect("list.jsp");

%>