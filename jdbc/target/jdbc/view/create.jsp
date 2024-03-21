<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file = "../include/header.jsp"%>
<h1 class = "mt-5"> todo create </h1>

<form action='<c:url value="/view/createPro.jsp"/>' method="post">
    <div class="mb-3">
        <label for="title" class="form-label">title</label>
        <input type="text" class="form-control" id="title" placeholder="title" name="title">
    </div>
    <%-- <div class="mb-3">
        <label for="create_at" class="form-label">create_at</label>
        <input type="text" class="form-control" id="create_at" placeholder="create_at" name="create_at">
    </div> --%>
    <%-- <div class="mb-3">
        <label for="completed" class="form-label">completed</label>
        <input type="checkbox" name="completed" id="completed" class="form-control">
    </div> --%>
    <div class="mb-3">
        <label for="description" class="form-label">description</label>
        <textarea class="form-control" id="description" rows="3" name="description"></textarea>
    </div>
    <div>
        <button class="btn btn-primary"> 수정 </button>
        <a class="btn btn-primary" href='<c:url value="/view/list.jsp"/>'>목록</a>
    </div>
</form>

<%@ include file = "../include/footer.jsp"%>