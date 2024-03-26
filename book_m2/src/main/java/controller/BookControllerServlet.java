package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import action.BookCreateAction;
import action.BookDeleteAction;
import action.BookLeaveAction;
import action.BookListAction;
import action.BookLoginAction;
import action.BookLogoutAction;
import action.BookPasswordAction;
import action.BookReadAction;
import action.BookRegisterAction;
import action.BookSearchAction;
import action.BookUpdateAction;

@WebServlet("*.do")
public class BookControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");

        // URI 분리작업
        String requestUri = req.getRequestURI(); // 8080이후의 경로
        String contextPath = req.getContextPath(); // pj name
        String cmd = requestUri.substring(contextPath.length()); // .do get

        Action action = null;

        // cmd로 action 생성
        if (cmd.equals("/list.do")) {
            // task가 끝난 후 보여줄 페이지 경로
            action = new BookListAction("/view/list.jsp");
        } else if (cmd.equals("/create.do")) {
            action = new BookCreateAction("/list.do");
        } else if (cmd.equals("/read.do")) {
            action = new BookReadAction("/view/read.jsp");
        } else if (cmd.equals("/update.do")) {
            action = new BookUpdateAction("/read.do");
        } else if (cmd.equals("/delete.do")) {
            action = new BookDeleteAction("/list.do");
        } else if (cmd.equals("/search.do")) {
            action = new BookSearchAction("/view/list.jsp");
        } else if (cmd.equals("/login.do")) {
            action = new BookLoginAction("/list.do");
        } else if (cmd.equals("/logout.do")) {
            action = new BookLogoutAction("/");
        } else if (cmd.equals("/change.do")) {
            action = new BookPasswordAction("/view/login.jsp");
        } else if (cmd.equals("/register.do")) {
            action = new BookRegisterAction("/view/login.jsp");
        } else if (cmd.equals("/leave.do")) {
            action = new BookLeaveAction("/");
        }

        // 생성된 action을 execute (호출해서 일시키기)
        // servlet역할이였던 것
        ActionForward af = null;
        try {
            af = action.execute(req);
        } catch (Exception e) {
            e.printStackTrace();
        }

        // 이동방식과 경로에 따라 움직이기
        if (af.isRedirect()) {
            resp.sendRedirect(af.getPath());
        } else {
            RequestDispatcher rd = req.getRequestDispatcher(af.getPath());
            rd.forward(req, resp);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
