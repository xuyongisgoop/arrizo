package com.arrizo.web.model.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arrizo.web.model.service.StoreService;
import com.arrizo.web.model.service.UserService;
import com.arrizo.web.model.util.CookieUtils;

@RequestMapping("/user")
@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private StoreService storeSerive;
	
	/**
	 * 登录页面
	 * @param param
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
	@RequestMapping("login")
	public String login(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		return "/WEB-INF/user/login.jsp";
	}
	
	/**
	 * 登录提交
	 * @param param
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("loginSubmit")
	public String loginSubmit(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		Map<String, Object> result = userService.login(param);
		if (result.get("code").toString().equals("200")) {
			Map<String, Object> resultData = (Map<String, Object>)result.get("data");
			CookieUtils.setCookie("user_id", resultData.get("user_id").toString(), 1 * 24 * 3600, "/", response);
		}
		map.addAttribute("result", result);
		return "redirect:/store/storeMain.html";
	}
	
	/**
	 * 注册页面
	 * @param param
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
	@RequestMapping("register")
	public String register(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		return "/WEB-INF/user/register.jsp";
	}
	
	/**
	 * 注册提交
	 * @param param
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping("registerSubmit")
	public String registerSubmit(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		Map<String, Object> result = userService.register(param);
		if (result.get("code").toString().equals("200")) {
			Map<String, Object> resultData = (Map<String, Object>)result.get("data");
			CookieUtils.setCookie("user_id", resultData.get("user_id").toString(), 1 * 24 * 3600, "/", response);
		}
		map.addAttribute("result", result);
		return "redirect:/store/storeMain.html";
	}
	
	/**
	 * 跳转至用户个人中心
	 * @param param
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
	@RequestMapping("userCenter")
	public String userCenter(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		param.put("user_id", CookieUtils.getCookie("user_id", request));
		param.put("store_id", CookieUtils.getCookie("store_id", request));
		Map<String, Object> result = userService.getUserInfo(param);
		map.addAttribute("result", result);
		return "/WEB-INF/user/user_center.jsp";
	}
	
	/**
	 * 预约提交
	 * @param param
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
	@RequestMapping("preOrderSubmit")
	public String preOrderSubmit(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		param.put("user_id", CookieUtils.getCookie("user_id", request));
		param.put("store_id", CookieUtils.getCookie("store_id", request));
		Map<String, Object> result = userService.preOrderSubmit(param);
		map.addAttribute("result", result);
		return "redirect:/user/userCenter.html";
	}
}
