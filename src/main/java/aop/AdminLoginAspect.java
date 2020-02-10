package aop;

import javax.servlet.http.HttpSession;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import exception.LoginException;
import logic.User;


@Component
@Aspect
@Order(1)
public class AdminLoginAspect {
	@Around("execution(* controller.Admin*.*(..)) && args(userid,session)")
	public Object AdminCheck(ProceedingJoinPoint joinPoint,String userid, HttpSession session)
			throws Throwable {
		User loginUser = (User)session.getAttribute("loginUser");	
		if(loginUser == null) {
			throw new LoginException
			("�α��� �� �̿��ϼ���","manager_login.store");
		}		
		if(!loginUser.getUserid().equals(userid)) {
			throw new LoginException
			("�ڽ��� ������ ��ȸ �����մϴ�.","manager_index.store");
		}
		Object ret = joinPoint.proceed();
		return ret;
	}
	@Around("execution(* controller.Admin*.*(..)) && args(access,userid,session)")
    public Object userIdCheck (ProceedingJoinPoint joinPoint,
          Integer access, String userid, HttpSession session) throws Throwable {
       User loginUser = (User)session.getAttribute("loginUser");
       if(loginUser == null) {
          throw new LoginException
                 ("�α��� �� �̿��ϼ���","manager_login.store");
       }
       if(!loginUser.getUserid().equals("admin")) {
          throw new LoginException
              ("���� �����ڸ� ������ �� �ִ� ������ �Դϴ�.","manager_index.store");
       }
       Object ret = joinPoint.proceed();
       return ret;
    }
}