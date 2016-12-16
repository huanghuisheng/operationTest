package com.iov.icloud.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;

import com.iov.icloud.service.AfterSaleService;

@Service("afterSaleService")
public class AfterSaleServiceImpl extends BasicService implements AfterSaleService {

	public Map<String, Object> afterSaleWebSiteList(String region, String offset, String order, String sort) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> afterSaleWebSiteImeiList(String webSiteId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> afterSaleChangList(String region, String offset, String order, String sort) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> searchAfterSaleChang(String afterSaleImei, String region) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> fuzzySearchAfterSaleChang(String afterSaleImei) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object afterSaleChangEdit(Map<String, String> json, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object afterSaleImieChang(Map<String, String> json, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> afterSaleSendList(String region, String offset, String order, String sort) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object sendAfterSale(Map<String, String> json, HttpServletRequest request, List<String> listImei) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object sendAfterSaleEdit(Map<String, String> json, HttpServletRequest request, List<String> listImei) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public void afterSaleExport(List<Map<String, Object>> listImei, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void sendAfterSaleExport(List<Map<String, Object>> listImei, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public List<Map<String, Object>> afterSaleShowLog(String flag, String recordId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object deleteSpareAsChange(String changId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object addAfterSaleWebSite(Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object deleteAfterSaleWebSite(String webSiteId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	

}
