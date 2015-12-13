package com.arrizo.web.model.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arrizo.web.model.service.ProductService;
import com.arrizo.web.model.util.CookieUtils;

@RequestMapping("/product")
@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	/**
	 * 跳转至产品的主页面
	 * @param param
	 * @param map
	 * @return
	 */
	@RequestMapping("productMain")
	public String productMain(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		param.put("store_id", CookieUtils.getCookie("store_id", request));
		Map<String, Object> result = productService.getProductList(param);
		map.addAttribute("result", result);
		return "/WEB-INF/product/product.jsp";
	}
	
}
