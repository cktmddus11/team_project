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
public class UserLoginAspect {
	@Around("execution(* controller.MypageCo*.check*(..)) && args(..,session)") 
	public Object userLoginCheck(ProceedingJoinPoint joinPoint, HttpSession session) throws Throwable{
		User loginUser = (User)session.getAttribute("loginUser");
		
		if(loginUser == null) {
			throw new LoginException("�α��� �� �ŷ��ϼ���", "../user/signin.store");
			// �α׾ƿ� �����϶� main�� �����ϸ� ������ ������ �߻���Ŵ 
			//joinPoint�κ����� ���� ���� 
		}
		Object ret = joinPoint.proceed(); 
		return ret;
		
	}
}
