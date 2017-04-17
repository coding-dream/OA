package com.wenjun.oa.tool;

import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangli0 on 2017/4/17.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
public class FormVerifyUtils {
    private static List<String> mimeTypes = null;

    public static boolean checkUpload(MultipartFile file){
        initMimeTypes();

        if (file.getSize() == 0) {
            return false;
        }
        String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".")+1);

        if (!mimeTypes.contains(suffix)) {
            return false;
        }
        return true;
    }


    public static List<String> initMimeTypes(){
        if (mimeTypes == null) {
            synchronized (FormVerifyUtils.class) {
                if (mimeTypes == null) {
                    mimeTypes = new ArrayList<String>();

                    mimeTypes.add("jpg");
                    mimeTypes.add("jpeg ");
                    mimeTypes.add("png");
                    mimeTypes.add("bmp");
                    mimeTypes.add("ico");
                    mimeTypes.add("gif");
                    mimeTypes.add("psd");
                    mimeTypes.add("svg");
                }
            }
        }
        return mimeTypes;

    }

}
