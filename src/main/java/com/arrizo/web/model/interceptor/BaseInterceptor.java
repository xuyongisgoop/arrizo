package com.arrizo.web.model.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.util.AntPathMatcher;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public abstract class BaseInterceptor extends HandlerInterceptorAdapter {
	protected final Logger log = Logger.getLogger(this.getClass());

	private List<String> excludes;
	private List<String> includes;
	private AntPathMatcher pathMatcher = new AntPathMatcher();

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		try {
			String requestUrl = request.getRequestURI().substring(request.getContextPath().length());

			if(getExcludes() != null) {
				if (contains(requestUrl, getExcludes())) {
					return true;
				}
			}
			if (getIncludes() != null) {
				if (!contains(requestUrl, getIncludes())) {
					return true;
				}
			}

			return preHandleLogic(request, response, handler);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	protected abstract boolean preHandleLogic(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception;

	public boolean contains(String requestURI, List<String> patterns) {
		for (String pattern : patterns) {
			//match 匹配要求/**/login match /arronkj/login 
			//  **/login not macth /arronkj/login
			//  resuorce/** not macth /arronkj/reource/**
			if (pathMatcher.match(pattern, requestURI)){
				return true;
			}
		}
		return false;
	}

	public void setExcludes(List<String> excludes) {
		this.excludes = excludes;
	}

	public List<String> getExcludes() {
		return excludes;
	}

	public void setIncludes(List<String> includes) {
		this.includes = includes;
	}

	public List<String> getIncludes() {
		return includes;
	}

}
