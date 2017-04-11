package com.wenjun.oa.action;

import com.wenjun.oa.bean.Department;
import com.wenjun.oa.bean.Role;
import com.wenjun.oa.bean.User;
import com.wenjun.oa.service.DepartmentService;
import com.wenjun.oa.service.RoleService;
import com.wenjun.oa.service.UserMgService;
import com.wenjun.oa.tool.DepartmentUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/**
 * Created by wangli0 on 2017/4/8.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Controller
@Scope("prototype")
public class UserMgAction {
    @Resource
    private UserMgService userMgService;

    @Resource
    private RoleService roleService ;
    @Resource
    private DepartmentService departmentService ;

    // action (addUI, editUI 准备的数据不同) 但 共用同一个页面 saveUI.jsp

    @RequestMapping("/user_list.action")
    public String list(int currentPage,int pageSize){
        // 分页显示

        return "user/list";
    }

    @RequestMapping("/user_delete.action")
    public String delete(Long id) {
        userMgService.delete(id);
        return "redirect:/user_list.action";
    }
    @RequestMapping("/user_addUI.action")
    public String addUI(Map map) {
        // 添加用户，首先 准备 departmentList数据 和 roleList 数据 回显，放入request中
        List<Department> topList = departmentService.findTopList();
        List<Department> departmentList = DepartmentUtils.getAllDepartments(topList);
        map.put("departmentList", departmentList);

        // 准备数据, roleList
        List<Role> roleList = roleService.findAll();
        map.put("roleList", roleList);
        return "user/saveUI";
    }

    @RequestMapping("/user_add.action")
    public String add(User model,Long departmentId,Long []roleIds){

        // 封装到对象中（当model是实体类型时，也可以使用model，但要设置未封装的属性）
        // >> 设置所属部门
        model.setDepartment(departmentService.getById(departmentId));
        // >> 设置关联的岗位
        List<Role> roleList = roleService.getByIds(roleIds);
        model.setRoles(new HashSet<Role>(roleList));
        // >> 设置默认密码为1234（要使用MD5摘要）
        String md5Digest = DigestUtils.md5Hex("1234");
        model.setPassword(md5Digest);

        // 保存到数据库
        userMgService.save(model);

        return "redirect:/user_list.action";
    }

    /** 修改页面 */
    @RequestMapping("/user_editUI.action")
    public String editUI(Long userId,Map map) throws Exception {
        // 准备数据, departmentList
        List<Department> topList = departmentService.findTopList();
        List<Department> departmentList = DepartmentUtils.getAllDepartments(topList);
        map.put("departmentList", departmentList);

        // 准备数据, roleList
        List<Role> roleList = roleService.findAll();
        map.put("roleList", roleList);

        // 准备回显的数据
        User user = userMgService.getById(userId);
        map.put("user", user);

        if (user.getDepartment() != null) {
            Long departmentId = user.getDepartment().getId();
            map.put("departmentId", departmentId);
        }
        if (user.getRoles() != null) {
            Long [] roleIds = new Long[user.getRoles().size()];
            int index = 0;
            for (Role role : user.getRoles()) {
                roleIds[index++] = role.getId();
            }
            map.put("roleIds", roleIds);
        }

        return "user/saveUI";
    }





    @RequestMapping("/user_edit.action")
    public String edit(User model,Long departmentId,Long [] roleIds) {
        // 1，从数据库中取出原对象
        User user = userMgService.getById(model.getId());

        // 2，设置要修改的属性
        user.setLoginName(model.getLoginName());
        user.setName(model.getName());
        user.setGender(model.getGender());
        user.setPhoneNumber(model.getPhoneNumber());
        user.setEmail(model.getEmail());
        user.setDescription(model.getDescription());
        // >> 设置所属部门
        user.setDepartment(departmentService.getById(departmentId));
        // >> 设置关联的岗位
        List<Role> roleList = roleService.getByIds(roleIds);
        user.setRoles(new HashSet<Role>(roleList));

        // 3，更新到数据库
        userMgService.update(user);

        return "redirect:/user_list.action";
    }


    /** 初始化密码为1234 */
    @RequestMapping("/user_init.action")
    public String initPassword(User model) throws Exception {
        // 1，从数据库中取出原对象
        User user = userMgService.getById(model.getId());

        // 2，设置要修改的属性（要使用MD5摘要）
        String md5Digest = DigestUtils.md5Hex("1234");
        user.setPassword(md5Digest);

        // 3，更新到数据库
        userMgService.update(user);
        return "redirect:/user_list.action"; //重定向到action
    }

}
