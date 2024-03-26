package action;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.Part;

import dto.BoardDto;
import lombok.AllArgsConstructor;
import service.BoardService;
import service.BoardServiceImpl;

@AllArgsConstructor
public class BoardWriteAction implements Action {
    private String path;

    @Override
    public ActionForward execute(HttpServletRequest req) throws Exception {

        BoardDto dto = new BoardDto();
        dto.setName(req.getParameter("name"));
        dto.setTitle(req.getParameter("title"));
        dto.setContent(req.getParameter("content"));
        dto.setPassword(req.getParameter("password"));

        // file upload
        Part part = req.getPart("attach");
        String fileName = getFileName(part);

        String saveDir = "C:\\upload";

        // if (!fileName.isEmpty()) {
        // // c:\\upload\~~
        // part.write(saveDir + "\\" + fileName);
        // }
        if (!fileName.isEmpty()) {
            // duplicated된 filename은 서버에 저장하지않음
            // 그럼 uuid를 따로 저장해뒀다가
            // 클라이언트에게 표시할 땐 uuid를 제거한 값으로 표시?
            // 그럴듯 db에는 uuid를 넣고 클라이언트에 표시할 땐 uuid를 제거한 상태의 filename만 제공
            // 더욱 detail하게 colums을 split해서 사용할 수 있는 data를 늘림.
            // 그렇게 함으로 data의 사용범위도 늘릴 수 있음.

            UUID uuid = UUID.randomUUID();
            File uploadFile = new File(saveDir + File.separator + uuid + "_" + fileName);

            part.write(uploadFile.toString());
            dto.setAttach(uuid + fileName);
        }

        BoardService service = new BoardServiceImpl();
        boolean result = service.insert(dto);

        if (!result) {
            path = "/view/qna_board_write.jsp";
        }

        return new ActionForward(path, true);
    }

    private String getFileName(Part part) {
        // Content-Disposition: attachment; filename="filename.jpg"
        String header = part.getHeader("content-disposition");
        String[] arr = header.split(";");

        for (int i = 0; i < arr.length; i++) {
            String temp = arr[i];
            if (temp.trim().startsWith("filename")) {
                return temp.substring(temp.indexOf("=") + 2, temp.length() - 1);

            }
        }
        return "";
    }
}
