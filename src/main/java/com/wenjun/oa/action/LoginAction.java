package com.wenjun.oa.action;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;


public class LoginAction extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String name = request.getParameter("name");
        JSONObject object= new JSONObject();
        try {
            object.put("name", "小明");
            object.put("age", 10);

        } catch (JSONException e) {
            e.printStackTrace();
        }

        String content = object.toString()+name;
        response.getWriter().write(content);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
