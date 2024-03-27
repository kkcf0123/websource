package action;

import javax.servlet.http.HttpServletRequest;

import dto.BoardDto;
import lombok.AllArgsConstructor;
import service.BoardService;
import service.BoardServiceImpl;

@AllArgsConstructor
public class BoardModifyAction implements Action {
    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {

        BoardDto updateDto = new BoardDto();
        updateDto.setBno(Integer.parseInt(req.getParameter("bno")));
        updateDto.setTitle(req.getParameter("title"));
        updateDto.setContent(req.getParameter("content"));
        updateDto.setPassword(req.getParameter("password"));

        BoardService service = new BoardServiceImpl();
        boolean result = service.update(updateDto);

        if (!result) {
            path = "/qModify.do?bno=" + updateDto.getBno();
        } else {
            path += "?bno=" + updateDto.getBno();
        }

        return new ActionForward(path, true);
    }

}
