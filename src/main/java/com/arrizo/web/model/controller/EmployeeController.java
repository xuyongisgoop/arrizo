package com.arrizo.web.model.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arrizo.web.model.service.EmployeeService;
import com.arrizo.web.model.util.CookieUtils;

@RequestMapping("/employee")
@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService employeeService;
	
	/**
	 * 查询雇员列表
	 * @param param
	 * @param map
	 * @return
	 */
	@RequestMapping("employeeList")
	public String employeeList(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		param.put("store_id", CookieUtils.getCookie("store_id", request));
		Map<String, Object> result = employeeService.getEmployeeList(param);
		map.addAttribute("result", result);
		return "/WEB-INF/employee/list.jsp";
	}
	
	/**
	 * 对雇员服务进行预约
	 * @param param
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
	@RequestMapping("preOrder")
	public String preOrder(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		Map<String, Object> result = employeeService.getEmployeeInfo(param);
		map.addAttribute("result", result);
		return "/WEB-INF/employee/pre_order.jsp";
	}
	
}
