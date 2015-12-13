package com.arrizo.web.model.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import com.arrizo.web.model.entity.Store;
import com.arrizo.web.model.service.StoreService;
import com.arrizo.web.model.util.CookieUtils;

public class StoreInterceptor extends BaseInterceptor {
	
	@Autowired
	private StoreService storeSerive;
	
	@Override
	protected boolean preHandleLogic(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// 先从request中获取store_id，如果有就直接修改cookie中的store_id;如果没有则从cookie中获取，获取不到则返回
		String store_id = request.getParameter("store_id");
		if (store_id == null) {
			store_id = CookieUtils.getCookie("store_id", request);
			if (store_id == null) {
				return false;
			}
		} else {
			if (!store_id.equals(CookieUtils.getCookie("store_id", request))) {
				CookieUtils.setCookie("store_id", store_id, 1 * 24 * 3600, "/", response);
				CookieUtils.setCookie("user_id", "", 0, "/", response);
				response.sendRedirect(request.getContextPath() + "/store/storeMain.html?store_id=" + store_id);
				return false;
			}
		}
		return true;
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		if (modelAndView != null) {
			String store_id = CookieUtils.getCookie("store_id", request);
			if (store_id != null) {
				Store store = storeSerive.getStoreSimpleInfo(Integer.parseInt(store_id));
				modelAndView.addObject("store_name", store.getStoreName());
				modelAndView.addObject("store_id", store.getId());
			}
		}
	}
	
}
