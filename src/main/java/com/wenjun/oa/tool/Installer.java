
package com.wenjun.oa.tool;

import com.wenjun.oa.bean.*;
import org.apache.commons.codec.digest.DigestUtils;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;

@Component
public class Installer {

	@Resource
	private SessionFactory sessionFactory;

	/**
	 * 执行安装
	 */
	@Transactional
	public void install() {
		Session session = sessionFactory.getCurrentSession();

		// ==============================================================
		// 保存超级管理员用户
		User user = new User();
		user.setLoginName("admin");
		user.setName("超级管理员");
		user.setPassword(DigestUtils.md5Hex("admin"));
		session.save(user); // 保存


		// ==============================================================
		// 保存权限数据
		Privilege menu, menu1, menu2, menu3, menu4, menu5;

		// --------------------
		menu = new Privilege("系统管理", null, null);
		menu1 = new Privilege("岗位管理", "/role_list", menu);
		menu2 = new Privilege("部门管理", "/department_list", menu);
		menu3 = new Privilege("用户管理", "/user_list", menu);
		session.save(menu);
		session.save(menu1);
		session.save(menu2);
		session.save(menu3);

		session.save(new Privilege("岗位列表", "/role_list", menu1));
		session.save(new Privilege("岗位删除", "/role_delete", menu1));
		session.save(new Privilege("岗位添加", "/role_add", menu1));
		session.save(new Privilege("岗位修改", "/role_edit", menu1));

		session.save(new Privilege("部门列表", "/department_list", menu2));
		session.save(new Privilege("部门删除", "/department_delete", menu2));
		session.save(new Privilege("部门添加", "/department_add", menu2));
		session.save(new Privilege("部门修改", "/department_edit", menu2));

		session.save(new Privilege("用户列表", "/user_list", menu3));
		session.save(new Privilege("用户删除", "/user_delete", menu3));
		session.save(new Privilege("用户添加", "/user_add", menu3));
		session.save(new Privilege("用户修改", "/user_edit", menu3));
		session.save(new Privilege("初始化密码", "/user_initPassword", menu3));

		// --------------------
		menu = new Privilege("审批管理", null, null);
		menu1 = new Privilege("起草申请", "/flow_applyTypeListUI", menu);
		menu2 = new Privilege("待我审批", "/flow_myMessageList", menu);
		menu3 = new Privilege("我的申请查询", "/flow_leaveList", menu);

		session.save(menu);
		session.save(menu1);
		session.save(menu2);
		session.save(menu3);

		// ====================添加测试数据
		Notice notice = new Notice();
		notice.setContent("各部门:\n" +
				"\t依国务院办公厅通知，2017年清明节放假时间为4月2日至4月4日共3天，\n" +
				"4月1号(星期六)正常上班。\n" +
				"\t为保障假后工作的正常运行，请各位同事离开工作岗位的同时检查好各项设备的运行情况，并关闭所有的电子设备，包括电脑，\n" +
				"电视，空调，饮水机等。节假出行注意安全。\n" +
				"\t特此通知！\n" +
				"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t文珺信息科技有限公司\n" +
				"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t2017年5月15日\n" +
				"\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n" +
				"\t\n" +
				"\t");
		notice.setCreateTime(new Date());
		session.save(notice);
		// ---------------------

		Department department1 = new Department();
		department1.setName("市场部");
		department1.setDescription("前端销售，后端销售，商务组");

		Department department2 = new Department();
		department2.setName("研发部");
		department2.setDescription("研发部，GO组，PHP组，UI组");

		Department department3 = new Department();
		department3.setName("行政部");
		department3.setDescription("日常后勤，人事");

		Department department4 = new Department();
		department4.setName("财务部");
		department4.setDescription("掌管经济大权");

		Department department5 = new Department();
		department5.setName("运营部");
		department5.setDescription("微信运营组，PC运营组");

		session.save(department1);
		session.save(department2);
		session.save(department3);
		session.save(department4);
		session.save(department5);

		// ---------------------

		Role role1 = new Role();
		role1.setName("总经理");
		role1.setDescription("管理公司日常事务");

		Role role2 = new Role();
		role2.setName("部门经理");
		role2.setDescription("负责部门事务");

		Role role3 = new Role();
		role3.setName("主管");
		role3.setDescription("小组主管");

		Role role4 = new Role();
		role4.setName("组长");
		role4.setDescription("小组领队");

		Role role5 = new Role();
		role5.setName("员工");
		role5.setDescription("公司员工");

		session.save(role1);
		session.save(role2);
		session.save(role3);
		session.save(role4);
		session.save(role5);





	}

	public static void main(String[] args) {
		ApplicationContext ac = new ClassPathXmlApplicationContext("beans.xml");
		Installer installer = (Installer) ac.getBean("installer");
		installer.install();
	}
}
