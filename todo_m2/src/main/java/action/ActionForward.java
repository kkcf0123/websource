package action;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// @Getter
// @Setter
// @AllArgsConstructor
// @NoArgsConstructor
// @ToString
public class ActionForward {
    private String path; // 경로 지정 변수
    private boolean redirect; // sendRedirect 여부(true)

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public boolean isRedirect() {
        return redirect;
    }

    public void setRedirect(boolean redirect) {
        this.redirect = redirect;
    }

    public ActionForward() {
    }

    public ActionForward(String path, boolean redirect) {
        this.path = path;
        this.redirect = redirect;
    }

}
