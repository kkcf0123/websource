package basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/net")
public class NetServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        out.print("Request Scheme : " + req.getScheme() + "<br>");
        out.print("Server Name : " + req.getServerName() + "<br>");
        out.print("Server Address : " + req.getLocalAddr() + "<br>");
        out.print("Server Post : " + req.getServerPort() + "<br>");
        out.print("Client Address : " + req.getRemoteAddr() + "<br>");
        out.print("Client Host : " + req.getRemoteHost() + "<br>");
        out.print("Client Port : " + req.getRemotePort() + "<br>");
        out.print("RequestURI : " + req.getRequestURI() + "<br>");
        out.print("RequestURL : " + req.getRequestURL() + "<br>");
        out.print("ContextPath : " + req.getContextPath() + "<br>");

        // out.print(req.());
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        super.doGet(req, resp);
    }
}
