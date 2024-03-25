package action;

import javax.servlet.http.HttpServletRequest;

import dto.BookDto;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;

@AllArgsConstructor
public class BookReadAction implements Action {
    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {
        String code = req.getParameter("code");

        BookService service = new BookServiceImpl();
        BookDto dto = service.read(Integer.parseInt(code));

        req.setAttribute("dto", dto); // -> setAttribute가 나오면 false

        return new ActionForward(path, false);
    }

}
