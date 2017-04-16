package com.wenjun.oa.tool;

/**
 * Created by wangli0 on 2017/4/16.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public class TextUtils {
    public static boolean isEmpty(String text){
        if ("".equals(text) || null == text) {
            return true;
        }
        return false;
    }
}
