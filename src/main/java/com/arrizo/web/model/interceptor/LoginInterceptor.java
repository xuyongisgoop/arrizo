package com.arrizo.web.model.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.arrizo.web.model.util.CookieUtils;

public class LoginInterceptor extends BaseInterceptor {

	@Override
	protected boolean preHandleLogic(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String user_id = CookieUtils.getCookie("user_id", request);
		if (user_id == null) {
			response.sendRedirect(request.getContextPath() + "/user/login.html");
			return false;
		}
		return true;
	}
	
}
