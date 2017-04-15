package com.wenjun.oa.action;

import com.wenjun.oa.bean.User;
import org.apache.commons.io.FileUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by wangli0 on 2017/4/15.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Controller
@Scope("prototype")
public class UploadAction {

    @RequestMapping("/uploadUI.action")
    public String uploadUI(){


        return "upload/uploadUI";
    }

    @RequestMapping("/upload_list.action")
    public String list(){

        return "upload/list";
    }
    @RequestMapping("/upload.action")
    public String upload(MultipartFile file, HttpSession session) throws IOException {
        String dest = session.getServletContext().getRealPath("/WEB-INF/upload");
        System.out.println("文件信息:"+file.getOriginalFilename()+" "+file.getContentType());
        // 上传
        FileUtils.copyInputStreamToFile(file.getInputStream(),new File(dest+File.separator+file.getOriginalFilename()));
        System.out.println("上传成功！");
        return "redirect:/upload_list.action";
    }


}
