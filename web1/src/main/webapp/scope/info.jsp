<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> --%>

<%
    // id name age
    String id = request.getParameter("id");
    String name = request.getParameter("name");
    String age = request.getParameter("age");

// info.jsp의 data를 another page와 공유함
// 1) get/post 방식
// 2) scope
//     2-1 page : current page (안씀)
//     2-2 request : HttpServletRequest 유효범위 -> 다음 페이지까지
//     2-3 session : HttpSession 유효범위 -> browser 닫기 전까지
//     2-4 application : Tomcat server 범위 ( 안씀)
    // request.setAttribute("key", value), request.getAttribute("key")
    // session.setAttribute(), session.getAttribute()
%>

<h3> id : <%=id%></h3>
<h3> name : <%=name%></h3>
<h3> age : <%=age%></h3>

<%
    // request.setAttribute("key", value)
    request.setAttribute("id", id);
    request.setAttribute("name", name);
    request.setAttribute("age", age);

    pageContext.forward("next.jsp");
    
    // session.setAttribute("id", id);
    // session.setAttribute("name", name);
    // session.setAttribute("age", age);

%>

<%-- info.html > 표시 : info.jsp (실제 : next.jsp)
forward 주소가 가르키는 페이지 != 화면에 표시되는 내용 페이지 --%>


<%-- <h3>
<a href = "next.jsp?id=<%=id%>&name=<%=name%>&age=<%=age%>">next page</a>
</h3> --%>
<%-- <h3>
    <a href = "next.jsp">next page</a>
</h3> --%>
<%-- <form action="info.jsp" method="post">
    <div>
    <label for="id">id</label>
    <input type="text" name="id" id="id" value="<%=id%>" readonly />
    </div>
    <div>
    <label for="name">name</label>
    <input type="text" name="name" id="name" value="<%=name%>" readonly />
    </div>
    <div>
    <label for="age">age</label>
    <input type="text" name="age" id="age" value="<%=age%>" readonly />
    </div> 
    </form>
    --%>
