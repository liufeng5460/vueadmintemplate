package liufeng.vueadmintemplate.util;

import java.util.HashMap;
import java.util.Map;

public class ResponseUtil {
    public static final int SUCCESS_CODE = 20000;
    public static final int FAIL_CODE = 50000;
    public static final int FAIL_PASSWORD_CODE = 50001;
    public static final int FAIL_ILLEGAL_TOKEN_CODE = 50008;
    public static final int FAIL_EXPIRED_TOKEN_CODE = 50014;

    public static Object success() {
        Map<String, Object> map = new HashMap<>();
        map.put("code", SUCCESS_CODE);
        map.put("data", "success");
        return map;
    }

    public static Object success(Object data) {
        Map<String, Object> map = new HashMap<>();
        map.put("code", SUCCESS_CODE);
        map.put("data", data);
        return map;
    }

    public static Object fail() {
        Map<String, Object> map = new HashMap<>();
        map.put("code", FAIL_CODE);
        return map;
    }

    public static Object failOfPassword() {
        Map<String, Object> map = new HashMap<>();
        map.put("code", FAIL_PASSWORD_CODE);
        map.put("data", "用户名或密码错误");
        return map;
    }

    public static Object failOfIllegalToken() {
        Map<String, Object> map = new HashMap<>();
        map.put("code", FAIL_ILLEGAL_TOKEN_CODE);
        return map;
    }

    public static Object failOfExpiredToken() {
        Map<String, Object> map = new HashMap<>();
        map.put("code", FAIL_EXPIRED_TOKEN_CODE);
        return map;
    }


}
