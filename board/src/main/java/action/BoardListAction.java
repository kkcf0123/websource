package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.BoardDto;
import dto.SearchDto;
import lombok.AllArgsConstructor;
import service.BoardService;
import service.BoardServiceImpl;

@AllArgsConstructor
public class BoardListAction implements Action {
    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {

        int page = Integer.parseInt(req.getParameter("page"));
        int amount = Integer.parseInt(req.getParameter("amount"));

        String criteria = req.getParameter("criteria");
        String keyword = req.getParameter("keyword");

        // SearchDto searchDto = new SearchDto(page, amount, criteria, keyword);
        SearchDto searchDto = new SearchDto(criteria, keyword, page, amount);

        BoardService service = new BoardServiceImpl();
        List<BoardDto> list = service.getList(searchDto);

        req.setAttribute("list", list);
        req.setAttribute("searchDto", searchDto);

        // get service
        // list takes dto

        return new ActionForward(path, false);
    }

}
