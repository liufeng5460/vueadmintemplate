package liufeng.vueadmintemplate;

import liufeng.vueadmintemplate.util.ResponseUtil;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/hello")
@RestController
public class Hello {

    @GetMapping("")
    public Object h() {
        return ResponseUtil.success("hello world");
    }
}
