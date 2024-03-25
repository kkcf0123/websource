package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dto.MemberDto;
import lombok.AllArgsConstructor;
import service.BookService;
import service.BookServiceImpl;

@AllArgsConstructor
public class BookRegisterAction implements Action {
    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {

        MemberDto regDto = new MemberDto();
        regDto.setUserid(req.getParameter("id"));
        regDto.setPassword(req.getParameter("password"));
        regDto.setName(req.getParameter("name"));
        regDto.setEmail(req.getParameter("email"));
        // String userid = req.getParameter("userid");
        // String password = req.getParameter("password");
        // String name = req.getParameter("name");
        // String email = req.getParameter("email");
        // MemberDto insertDto = new MemberDto(userid, password, name, email);

        BookService service = new BookServiceImpl();
        if (service.register(regDto)) {
            path = "/view/register.jsp";
        } else {
            path = "/view/login.jsp";
        }

        return new ActionForward(path, true);
    }

}
