package com.wenjun.oa.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogHandler {
	// 声明一个切入点，本方法不能有返回值和参数
	//execution(第一个*表示任意返回值的方法,)
	@Pointcut("execution(* com.wenjun.oa.service.*.*(..))")
	public void myPointcut(){}

	//前置通知，在方法执行前执行
	@Before(value = "myPointcut()")
	public void before() {
		System.out.println("== before ==");
	}

	//最终通知，在原方法执行之后	如果原方法有异常，也会执行
	@After("myPointcut()")
	public void after() {
		System.out.println("== after ==");
	}

	// 后置通知，在原方法执行之后
	// 如果原方法有异常，则不执行。
	// 方法一：@AfterReturning("myPointcut()")
	// 方法二：@AfterReturning(pointcut = "myPointcut()")
	// 可以使用returning参数指定返回值的对应的参数名，Spring就会在调用本方法时把返回值传给指定名称的参数
	@AfterReturning("myPointcut()")
	public void afterReturning(){
		System.out.println("== afterReturning ==");

	}

	// 异常通知，在出现异常之后
	// @AfterThrowing("myPointcut()")
	@AfterThrowing(pointcut = "myPointcut()", throwing = "ex")
	public void afterThrowing(Exception ex) {
		System.out.println(ex);
		System.out.println("== afterThrowing ==");
	}

	// 环绕通知，在原方法调用的前后执行。
	// 在原方法执行出异常后，环绕通知的后面部分不会执行。
	// 一定要在执行完原方法后，从本方法中返回结果。
	@Around("myPointcut()")
	public Object around(ProceedingJoinPoint joinPoint) throws Throwable {
		System.out.println("== 环绕通知（前） ==");
		Object result = joinPoint.proceed(); // 执行原方法
		System.out.println("== 环绕通知（后） ==");

		return result;
	}

}
