package com.wenjun.oa.taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;

/**
 * Created by wangli0 on 2017/4/12.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

public class CheckTag  extends SimpleTagSupport{
//    模拟 Struts2 标签 <s:property value="%{id in privilegeIds ? 'checked' : ''}"/>

    //标签的属性均为字符串，不支持其他类型
    private Long id;
    private Long [] ids;


    @Override
    public void doTag() throws JspException, IOException {

        JspWriter jspWriter = getJspContext().getOut();

        for (Long i : ids) {
            if (id == i) {
                jspWriter.write("checked");
            }
        }
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long[] getIds() {
        return ids;
    }

    public void setIds(Long[] ids) {
        this.ids = ids;
    }
}
