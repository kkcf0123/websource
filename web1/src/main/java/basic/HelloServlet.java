package basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        // TODO Auto-generated method stub
        // 가져오는 data는 전부 string임
        // req.getParameter("form element 이름");

        req.setCharacterEncoding("utf-8");

        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String[] dogs = req.getParameterValues("dog");

        res.setContentType("text/html;charset=utf-8");
        PrintWriter out = res.getWriter();

        out.print("<ul>");
        out.print("<li> id : " + id + "</li>");
        out.print("<li> id : " + name + "</li>");
        for (String dog : dogs) {
            out.print("<li> dog : " + dog + "</li>");

        }
        out.print("</ul>");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(req, resp);
    }

}
