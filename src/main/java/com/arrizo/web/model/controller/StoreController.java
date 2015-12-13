package com.arrizo.web.model.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arrizo.web.model.service.StoreService;
import com.arrizo.web.model.util.CookieUtils;

@RequestMapping("/store")
@Controller
public class StoreController {
	
	@Autowired
	private StoreService storeSerive;
	
	/**
	 * 跳转至店铺的主页面
	 * @param param
	 * @param map
	 * @return
	 */
	@RequestMapping("storeMain")
	public String storeMain(@RequestParam Map<String, Object> param, Model map, HttpServletRequest request) {
		param.put("store_id", CookieUtils.getCookie("store_id", request));
		Map<String, Object> result = storeSerive.getStoreInfo(param);
		map.addAttribute("result", result);
		return "/WEB-INF/store/index.jsp";
	}
	
	/**
	 * 跳转至店铺的地址页面
	 * @param param
	 * @param map
	 * @return
	 */
	@RequestMapping("storeMap")
	public String storeMap(@RequestParam Map<String, Object> param, Model map) {
		return "/WEB-INF/store/map.jsp";
	}
	
	/**
	 * 查看咨询信息列表
	 * @param param
	 * @param map
	 * @param request
	 * @return
	 */
	@RequestMapping("newsList")
	public String newsList(@RequestParam Map<String, Object> param, Model map, HttpServletRequest request) {
		param.put("store_id", CookieUtils.getCookie("store_id", request));
		Map<String, Object> result = storeSerive.getNewsList(param);
		map.addAttribute("result", result);
		return "/WEB-INF/store/news.jsp";
	}
	
}
