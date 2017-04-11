package com.wenjun.oa.action;

import com.wenjun.oa.bean.Department;
import com.wenjun.oa.service.DepartmentService;
import com.wenjun.oa.tool.DepartmentUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by wangli0 on 2017/4/11.
 * github https://github.com/wangli0
 * blog http://www.jianshu.com/u/79a88a044955
 * website: http://need88.com
 */

@Controller
@Scope("prototype")
public class DepartmentAction {

    @Resource
    private DepartmentService departmentService;


    @RequestMapping("/department_list.action")
    public String list(Long parentId,Map map) throws Exception {
        // 列表页面只显示一层的（同级的）部门数据，默认显示最顶级的部门列表
        List<Department> departmentList = null;
        if (parentId == null) { // 顶级部门列表
            departmentList = departmentService.findTopList();
        } else { // 子部门列表
            departmentList = departmentService.findChildren(parentId);
            Department parent = departmentService.getById(parentId);

            map.put("parent", parent);

        }
        map.put("departmentList", departmentList);
        return "department/list";
    }

    @RequestMapping("/department_delete.action")
    public String delete(Long parentId,Department model, RedirectAttributes attr) throws Exception {
        departmentService.delete(model.getId());

        /** 带参数的重定向
         * addFlashAttribute实际上将这些属性存储在flashmap中（内部维护在用户会话中，一旦下一次重定向的请求得到满足就会被删除），
         * 另一个addAttribute实质上是从您的属性中构造出请求参数，并使用请求参数重定向到所需的页面 。
         * 所以优点是可以在Flash属性中存储很多任何对象（因为它不是序列化到请求参数中，而是作为对象维护），
         * 而使用addAttribute，因为您添加的对象会转换为正常 请求参数，你非常受限于String或primitives等对象类型。
         */
        attr.addFlashAttribute("parentId", parentId);
        return "redirect:/department_list.action";
    }

    @RequestMapping("/department_addUI.action")
    public String addUI(Map map) throws Exception {
        // 准备数据, departmentList
        List<Department> topList = departmentService.findTopList();
        List<Department> departmentList = DepartmentUtils.getAllDepartments(topList);
        map.put("departmentList", departmentList);
        return "department/saveUI";
    }

    @RequestMapping("/department_add.action")
    public String add(Department model,Long parentId) throws Exception {

        Department parent = departmentService.getById(parentId);
        model.setParent(parent);
        // 保存
        departmentService.save(model);
        return "redirect:/department_list.action";
    }

    @RequestMapping("/department_editUI.action")
    public String editUI(Department model,Map map) throws Exception {
        // 准备数据, departmentList
        List<Department> topList = departmentService.findTopList();
        List<Department> departmentList = DepartmentUtils.getAllDepartments(topList);
        map.put("departmentList", departmentList);

        // 准备回显的数据
        Department department = departmentService.getById(model.getId());
        map.put("department",department);
        if (department.getParent() != null) {
            Long parentId= department.getParent().getId();
            //todo
            map.put("parentId", parentId);
        }
        return "department/saveUI";
    }

    @RequestMapping("/department_edit.action")
    public String edit(Long parentId,Department model) throws Exception {
        // 1，从数据库取出原对象
        Department department = departmentService.getById(model.getId());

        // 2，设置要修改的属性
        department.setName(model.getName());
        department.setDescription(model.getDescription());
        department.setParent(departmentService.getById(parentId)); // 设置所属的上级部门

        // 3，更新到数据库中
        departmentService.update(department);
        return "redirect:/department_list.action";
    }


}
