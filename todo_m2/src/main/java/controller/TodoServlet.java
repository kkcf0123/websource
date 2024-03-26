package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import action.TodoListAction;
import action.TodoReadAction;

@WebServlet("*.do")
public class TodoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");

        // 경로에서 요청 찾기
        String requestUri = req.getRequestURI(); // 8080 이후의 값
        String contextPath = req.getContextPath(); // 프로젝트명
        String cmd = requestUri.substring(contextPath.length()); // /create.do

        // System.out.println("requestUri " + requestUri);
        // System.out.println("contextPath " + contextPath);
        System.out.println("cmd " + cmd);

        // TodoDao dao = new TodoDao();
        // TodoService service = new TodoServiceImpl();

        // 목록 클릭: localhost:8080/list.do request
        // todoservlet으로 요청 전달
        // 1) 요청에 대한 한글처리
        // 2) 어디서 온 요청인지 분리작업
        // 3) 분리된 요청에 따라 Action 생성
        // 4) 생성된 Action에게 일 시키기(action.execute(req))
        // Action : client가 보낸 정보 가져오기
        // 서비스 호출
        // 서비스 결과에 따라 이동방식과 이동경로 객체 생성
        // 이동방식 - true(session.setAttribute() or 다시 servlet으로 요청이 가거나 or 가져갈 값이 없거나)
        // session -> redirect
        // false(req.setAttribute())
        // request -> forward

        Action action = null;

        if (cmd.equals("/list.do")) {
            action = new TodoListAction("/view/list.jsp");
        } else if (cmd.equals("/read.do")) {
            action = new TodoReadAction("/view/read.jsp");
        } else if (cmd.equals("/modify.do")) {
            action = new TodoReadAction("/view/modify.jsp");
        } else if (cmd.equals("/update.do")) {
            action = new TodoReadAction("/view/list.do");
        } else if (cmd.equals("/delete.do")) {
            action = new TodoReadAction("/view/list.do");
        } else if (cmd.equals("/create.do")) {
            action = new TodoReadAction("/view/list.do");
        }

        ActionForward af = null;

        try {
            af = action.execute(req);
        } catch (Exception e) {
            e.printStackTrace();
        }

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
