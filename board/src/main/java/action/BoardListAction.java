package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import dto.BoardDto;
import lombok.AllArgsConstructor;
import service.BoardService;
import service.BoardServiceImpl;

@AllArgsConstructor
public class BoardListAction implements Action {
    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {

        BoardService service = new BoardServiceImpl();
        List<BoardDto> list = service.getList();

        req.setAttribute("list", list);

        // get service
        // list takes dto

        return new ActionForward(path, false);
    }

}
