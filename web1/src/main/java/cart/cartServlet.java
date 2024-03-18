package cart;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/addcart")
public class cartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String product = req.getParameter("product");

        HttpSession session = req.getSession();
        // session이 exist하는지 안하는지 check
        ArrayList<String> products = (ArrayList<String>) session.getAttribute("products");

        if (products == null) {
            // session unexist이면 set
            products = new ArrayList<>();
            products.add(product);
            session.setAttribute("products", products);
        } else {
            products.add(product);
        }
        resp.sendRedirect("/cart/basket.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

}
