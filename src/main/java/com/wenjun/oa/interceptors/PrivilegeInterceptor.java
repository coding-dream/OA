package com.wenjun.oa.interceptors;

import com.wenjun.oa.bean.Privilege;
import com.wenjun.oa.bean.Role;
import com.wenjun.oa.bean.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Collection;

public class PrivilegeInterceptor implements HandlerInterceptor{

	/**
	 * 该方法在目标方法之前被调用.
	 * 若返回值为 true, 则继续调用后续的拦截器和目标方法.
	 * 若返回值为 false, 则不会再调用后续的拦截器和目标方法.
	 *
	 * 可以考虑做权限. 日志, 事务等.
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		User user = (User) request.getSession().getAttribute("user");

		String privUrl = request.getRequestURI();// privUrl 类似 /hello
		System.out.println("========= Interceptor GET "+privUrl+" =========");
		//如果未登录
		if (user == null) {
			if (privUrl.startsWith("/user_login")) { //登录或登录页面
				return true;
			} else {
				response.sendRedirect(request.getContextPath()+"/user_loginUI.action");
			}
		} else { //如果已登录

			Collection<String> allPrivilegeUrls  = (Collection<String>) request.getSession().getServletContext().getAttribute("allPrivilegeUrls");
			boolean hasPriv = hasPrivilegeByUrl(privUrl, user, allPrivilegeUrls);
			if (hasPriv) {
				return true;
			} else {
				response.sendRedirect(request.getContextPath()+"/noPrivilegeError.jsp");
			}

		}

		return false;
	}

	/**
	 * 调用目标方法之后, 但渲染视图之前.
	 * 可以对请求域中的属性或视图做出修改.
	 */
	@Override
	public void postHandle(HttpServletRequest request,
						   HttpServletResponse response, Object handler,
						   ModelAndView modelAndView) throws Exception {

	}

	/**
	 * 渲染视图之后被调用. 释放资源
	 */
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

	}


	public boolean hasPrivilegeByUrl(String privUrl,User user,Collection<String> allPrivilegeUrls) {
		// 超级管理有所有的权限
		if ("admin".equals(user.getLoginName())) {
			return true;
		}

		// >> 去掉后面的参数
		int pos = privUrl.indexOf("?");
		if (pos > -1) {
			privUrl = privUrl.substring(0, pos);
		}
		// >> 去掉UI后缀
		if (privUrl.endsWith("UI")) {
			privUrl = privUrl.substring(0, privUrl.length() - 2);
		}

		// 如果本URL不需要控制，则登录用户就可以使用

		if (!allPrivilegeUrls.contains(privUrl)) {
			return true;
		} else {
			// 普通用户要判断是否含有这个权限
			for (Role role : user.getRoles()) {
				for (Privilege priv : role.getPrivileges()) {
					if (privUrl.equals(priv.getUrl())) {
						return true;
					}
				}
			}
			return false;
		}
	}



}
