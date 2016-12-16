package com.iov.icloud.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController extends BasicController {
	private  static Logger LOGGER = Logger.getLogger(LoginController.class);
	
	public static List<Object> logonAccounts;
	public LoginController() {
		if (logonAccounts == null) {
			logonAccounts = new ArrayList<Object>();
		}
	}
	
	List<Map<String, Object>> list;
	List<Map<String, Object>> list1 = new ArrayList<Map<String, Object>>();
	Map<String, Object> map = new HashMap<String, Object>();
	
	// 登录验证；
	@ResponseBody
	@RequestMapping(value = "user/login")
	public Map<String, Object> user(String userName, String userPassword, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Map<String, Object>> user = loginService.loginValidation(userName, userPassword);
		
		
		
		
		
		
		
		
		
		
		
		
		return null;
	}
	
	// 注销
	@ResponseBody
	@RequestMapping(value = "basicController/closeAccount")
	public Map<String, Object> closeAccount(HttpServletRequest request,HttpServletResponse response) throws Throwable {
		return null;
		
	}

}
