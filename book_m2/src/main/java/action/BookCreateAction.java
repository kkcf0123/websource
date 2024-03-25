package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.BookDto;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;

@AllArgsConstructor
public class BookCreateAction implements Action {

    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {
        int code = Integer.parseInt(req.getParameter("code"));
        String title = req.getParameter("title");
        String writer = req.getParameter("writer");
        int price = Integer.parseInt(req.getParameter("price"));
        String description = req.getParameter("description");

        BookDto dto = new BookDto(code, title, writer, price, description);

        BookService service = new BookServiceImpl();
        boolean result = service.create(dto);

        return new ActionForward(path, true);
    }

}
