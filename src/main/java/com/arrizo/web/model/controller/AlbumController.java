package com.arrizo.web.model.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.arrizo.web.model.service.AlbumService;
import com.arrizo.web.model.util.CookieUtils;

@RequestMapping("/album")
@Controller
public class AlbumController {
	
	@Autowired
	private AlbumService albumService;
	
	/**
	 * 跳转至产品的主页面
	 * @param param
	 * @param map
	 * @return
	 */
	@RequestMapping("albumList")
	public String albumList(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		param.put("store_id", CookieUtils.getCookie("store_id", request));
		Map<String, Object> result = albumService.getAlbumList(param);
		map.addAttribute("result", result);
		return "/WEB-INF/album/album_list.jsp";
	}
	
	/**
	 * 获取相册的详细信息
	 * @param param
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
	@RequestMapping("albumInfo")
	public String albumInfo(@RequestParam Map<String, Object> param, HttpServletRequest request, HttpServletResponse response, Model map) {
		Map<String, Object> result = albumService.getAlbumInfo(param);
		map.addAttribute("result", result);
		return "/WEB-INF/album/album_info.jsp";
	}
	
}
