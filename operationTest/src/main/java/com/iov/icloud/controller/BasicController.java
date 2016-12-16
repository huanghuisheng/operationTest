package com.iov.icloud.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;

import com.iov.icloud.service.AfterSaleService;
import com.iov.icloud.service.DeviceService;
import com.iov.icloud.service.GroupService;
import com.iov.icloud.service.LoginService;
import com.iov.icloud.service.SpareService;


@Controller("BasicController")
public class BasicController{ 
	
	@Resource(name="loginService")
	 public LoginService loginService; 

	@Resource(name="deviceService")
	 public DeviceService deviceService; 
	
	@Resource(name="groupService")
	 public GroupService groupService; 
	
	@Resource(name="spareService")
	 public SpareService spareService; 
	
	@Resource(name="afterSaleService")
	 public AfterSaleService afterSaleService; 
	
}
