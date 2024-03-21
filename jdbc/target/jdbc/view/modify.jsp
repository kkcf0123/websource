<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%@ include file = "../include/header.jsp"%>
<%@ page import = "dto.ToDoDto"%>
<%
    // ToDoDto todo = (ToDoDto)request.getAttribute("todo");
%>

<h1 class = "mt-5"> todo modify </h1>
<form action="updatePro.jsp" method="post">
    <div class="mb-3">
        <label for="title" class="form-label">title</label>
        <%-- <input type="text" class="form-control" id="title" placeholder="title" name="title" value="<%=todo.getTitle()%>"> --%>
        <input type="text" class="form-control" id="title" placeholder="title" name="title" value="${todo.title}" >
    </div>
    <div class="mb-3">
        <label for="created_at" class="form-label">created_at</label>
        <%-- <input type="text" class="form-control" id="created_at" placeholder="created_at" name="created_at" value="<%=todo.getCreated_at()%>"> --%>
        <input type="text" class="form-control" id="created_at" placeholder="created_at" name="created_at" value="${todo.created_at}" readonly>
    </div>
    <div class="mb-3">
        <label for="completed" class="form-label">completed</label>
        <input type="checkbox" class="form-check-input" id="completed" name="completed"  value = "true" <c:out value="${todo.completed?'checked':''}"/>>
    </div>
    <div class="mb-3">
        <label for="description" class="form-label">description</label>
        <%-- <textarea class="form-control" id="description" rows="3" name="description" value="<%=todo.getDescription()%>"></textarea> --%>
        <textarea class="form-control" id="description" rows="3" name="description" >${todo.description}</textarea>
    </div>
    <div>
        <button class="btn btn-primary"> 수정 </button>
        <a class="btn btn-primary" href='<c:url value="/view/list.jsp"/>'>목록</a>
    </div>
    <input type="hidden" name="no" value=${todo.no}>
</form>

<%@ include file = "../include/footer.jsp"%>