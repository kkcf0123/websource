<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp"%>
<%@ page import="dao.ToDoDao" %>
<%@ page import="dto.ToDoDto" %>
<%@ page import="java.util.List" %>

<%
    // dao 불러서 DB연동
    ToDoDao dao = new ToDoDao();
    List<ToDoDto> list = dao.getList();
%>
<h1 class = "mt-5"> todo list </h1>
<table class="table">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">title</th>
      <th scope="col">date</th>
      <th scope="col">completed</th>
      <th scope="col">description</th>
    </tr>
  </thead>
  <tbody>
  <% for(ToDoDto dto : list){ %>
    <tr>
      <th scope="row"><%=dto.getNo()%></th>
      <td><a href="readPro.jsp?no=<%=dto.getNo()%>"><%=dto.getTitle()%></a></td>
      <td><%=dto.getCreated_at()%></td>
      <% if (dto.isCompleted() == true) { %>
        <td> done </td>
      <% } else { %>
        <td> yet </td>
      <% }%>
      <td><%=dto.getDescription()%></td>
    </tr>
  <% }%>
  </tbody>
</table>
<%@ include file = "../include/footer.jsp"%>