package action;

import javax.servlet.http.HttpServletRequest;

import dto.BoardDto;
import lombok.AllArgsConstructor;
import service.BoardService;
import service.BoardServiceImpl;

@AllArgsConstructor
public class BoardReplyAction implements Action {
    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {

        String name = req.getParameter("name");
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        String password = req.getParameter("password");

        int bno = Integer.parseInt(req.getParameter("bno"));
        int reRef = Integer.parseInt(req.getParameter("reRef"));
        int reSeq = Integer.parseInt(req.getParameter("reSef"));
        int reLev = Integer.parseInt(req.getParameter("reLev"));

        BoardService service = new BoardServiceImpl();
        BoardDto replyDto = new BoardDto();
        replyDto.setName(name);
        replyDto.setTitle(title);
        replyDto.setContent(content);
        replyDto.setPassword(password);
        replyDto.setReRef(reRef);
        replyDto.setReSeq(reSeq);
        replyDto.setReLev(reLev);

        boolean result = service.reply(replyDto);

        // 성공시 리스트
        // 실패시 댓글화면
        if (!result) {
            path = "/view/qna_board_reply.jsp?bno=" + bno;
        } else {

        }

        return new ActionForward(path, false);
    }

}
