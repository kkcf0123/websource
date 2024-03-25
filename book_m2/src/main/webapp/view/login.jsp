<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ include file="/include/header.jsp" %>
<link rel="stylesheet" href='<c:url value="/css/sign-in.css"/>'>

<div class = "d-flex align-items-center py-4 mt-5">
    <main class="form-signin w-100 m-auto">
        <form action='<c:url value="/login.do"/>' method="post">
            <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

            <div class="form-floating">
                <input type="text" class="form-control" id="userid" placeholder="id" name="userid">
                <label for="userid">id</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="password" placeholder="password" name="password">
                <label for="password">Password</label>
            </div>

            <button class="btn btn-primary w-100 py-2" type="submit">Sign in</button>
            <p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2024</p>
        </form>
    </main>
</div>

<%@ include file="/include/section.jsp" %>
<%@ include file="/include/footer.jsp" %>