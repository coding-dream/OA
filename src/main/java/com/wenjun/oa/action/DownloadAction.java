package com.wenjun.oa.action;

import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

/**
 * Created by wangli0 on 2017/4/15.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */
@Controller
@Scope("prototype")
public class DownloadAction {

    @RequestMapping("/download.action")
    public ResponseEntity<byte[]> download(String image,HttpSession session) throws IOException {
        File file = new File(image);//  ===  /WEB-INF/upload/ic_icon.png  ===
        if (!file.exists()) {
            throw new RuntimeException("文件不存在！");
        }
        InputStream in = session.getServletContext().getResourceAsStream(image);
        byte[] body = new byte[in.available()];

        in.read(body);

        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Disposition", "attachment;filename="+file.getName()+".png");

        HttpStatus statusCode = HttpStatus.OK;

        ResponseEntity<byte[]> response = new ResponseEntity<byte[]>(body, headers, statusCode);

        return response;

    }

}