<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/include/header.jsp" %>
<h1>register</h1>
<form action="<c:url value="/register.do"/>" method="post">
    <div class="mb-3 row">
        <label for="userid" class="col-sm-2 col-form-label">id</label>
        <div class="col-sm-5">
            <input type="text" class="form-control" id="userid" name = "userid">
        </div>
        <div class="col-sm-5">
            <span class="form-text"> id는 영문자 및 숫자 6-12자리로 작성해주세요.</span>
        </div>
    </div>

    <div class="mb-3 row">
        <label for="password" class="col-sm-2 col-form-label">password</label>
        <div class="col-sm-5">
            <input type="password" class="form-control" id="password" name = "password">
        </div>
        <div class="col-sm-5">
            <span class="form-text"> pw는 영문자, 숫자, 특문 8-12자리로 작성해주세요.</span>
        </div>
    </div>

    <div class="mb-3 row">
        <label for="name" class="col-sm-2 col-form-label">name</label>
        <div class="col-sm-10">
            <input type="name" class="form-control" id="name" name = "name">
        </div>
    </div>
    <div class="mb-3 row">
        <label for="email" class="col-sm-2 col-form-label">email</label>
        <div class="col-sm-10">
            <input type="email" class="form-control" id="email" name = "email">
        </div>
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-success"> join in </button>
        <button type="rest" class="btn btn-danger"> cancel </button>
    </div>
</form>
<%@ include file="/include/section.jsp" %>
<%@ include file="/include/footer.jsp" %>

