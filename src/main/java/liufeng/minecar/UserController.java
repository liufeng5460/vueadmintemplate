package liufeng.minecar;

import liufeng.minecar.util.ResponseUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/user")
public class UserController {

    User admin;
    User editor;

    {
        admin = new User();
        admin.setName("Super Admin");
        admin.setAvatar("https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");
        admin.setIntroduction("I am a super administrator");
        admin.setRoles(new String[]{"admin"});

        editor = new User();
        admin.setName("Normal Editor");
        admin.setAvatar("https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif");
        admin.setIntroduction("I am an editor");
        admin.setRoles(new String[]{"editor"});
    }

    @PostMapping("/logout")
    public Object logout() {
        return ResponseUtil.success();
    }

    @PostMapping("/login")
    public Object login(String username) {
        if ("admin".equals(username)
                || "editor".equals(username)) {
            return ResponseUtil.success();
        } else {
            return ResponseUtil.failOfPassword();
        }
    }

    @GetMapping("/info")
    public Object info(String token) {
        switch (token) {
            case "admin-token": {
                return ResponseUtil.success(admin);
            }
            case "editor-token": {
                return ResponseUtil.success(editor);
            }
        }
        return ResponseUtil.failOfIllegalToken();
    }
}
