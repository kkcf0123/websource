package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.BookDto;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;

@AllArgsConstructor
public class BookDeleteAction implements Action {
    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {
        // int code = Integer.parseInt(req.getParameter("code"));
        String code = req.getParameter("code");

        BookService service = new BookServiceImpl();
        boolean result = service.delete(Integer.parseInt(code));

        if (!result) {
            path = "/view/delete.jsp";
        }
        // req 호출했으니 true(redirect)
        return new ActionForward(path, true);
    }

}
