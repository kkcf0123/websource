<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ page import="dao.ToDoDao"%>
<%@ page import="dto.ToDoDto"%>

<%
    request.setCharacterEncoding("utf-8");

    // client가 입력한 todo data get
    // 만약 value가 없는 경우이면서 checkbox, radio인 경우 on값을 가지고 오게됨
    String no = request.getParameter("no");
    String completed = request.getParameter("completed");
    String description = request.getParameter("description");

    // set db
    ToDoDao dao = new ToDoDao();
    ToDoDto dto = new ToDoDto();
    dto.setCompleted(Boolean.parseBoolean(completed));
    dto.setDescription(description);
    dto.setNo(Integer.parseIns(no));

    int result = dao.update(dto);

    // pageContext.forward("read.jsp"); (use with request)
    response.sendRedirect("list.jsp");
%>