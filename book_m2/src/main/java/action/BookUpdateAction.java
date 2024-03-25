package action;

import javax.servlet.http.HttpServletRequest;

import dto.BookDto;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;

@AllArgsConstructor
public class BookUpdateAction implements Action {
    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {

        String code = req.getParameter("code");
        String price = req.getParameter("price");

        BookDto dto = new BookDto();
        dto.setCode(Integer.parseInt(code));
        dto.setPrice(Integer.parseInt(price));

        BookService service = new BookServiceImpl();
        boolean result = service.update(dto);

        if (result) {
            path += "?code=" + dto.getCode();
        } else {
            path = "/view/modify.jsp";

        }

        return new ActionForward(path, true);
    }

}
