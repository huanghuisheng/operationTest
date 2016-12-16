package com.iov.icloud.controller;

import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class AfterSaleController extends BasicController {
	private static Logger logger = Logger.getLogger(AfterSaleController.class);
	// 定义全局list保存IMEI号；
	public static Map<String, List<String>> asmapAll = new HashMap<String, List<String>>();
	// 定义保存导出-备用机替换信息；
	List<Map<String, Object>> afterSalelist = new ArrayList<Map<String, Object>>();
	// 定义保存导出-发货单信息；
	List<Map<String, Object>> sendAfterSaleList = new ArrayList<Map<String, Object>>();

	

	// 显示备用机交换信息
	@ResponseBody
	@RequestMapping(value = "basicController/afterSaleChangMsg")
	public Map<String, Object> afterSaleChangList(HttpServletRequest request, HttpServletResponse response, String region, String offset, String order, String sort) throws Exception {
       return null;
	}

	// 备用机换机统计-查询备用imei信息
	@ResponseBody
	@RequestMapping(value = "basicController/searchAfterSale")
	public Map<String, Object> searchafterSaleChang(HttpServletRequest request, HttpServletResponse response, String afterSaleImei, String region) throws Exception {
		return null;
	}

	// 备用机换机统计-模糊查询备用imei信息
	@ResponseBody
	@RequestMapping(value = "basicController/fuzzySearchAfterSaleChang")
	public Map<String, Object> fuzzySearchafterSaleChang(HttpServletRequest request, HttpServletResponse response, String afterSaleImei) throws Exception {
		return null;
	}

	// 备用机换机统计-编辑备用机信息；
	@ResponseBody
	@RequestMapping(value = "basicController/afterSaleChangEdit")
	public Map<String, Object> afterSaleChangEdit(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}

	// 备用机换机统计-备用机更换；
	@ResponseBody
	@RequestMapping(value = "basicController/afterSaleImieChang")
	public Map<String, Object> afterSaleImieChang(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}

	// 导出备用机统计信息；

	@RequestMapping(value = "basicController/afterSaleExport")
	public void afterSaleExport(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
	}

	// --------------------------------------------------显示操作日志；
	@ResponseBody
	@RequestMapping(value = "basicController/afterSaleShowLog")
	public Map<String, Object> afterSaleShowLog(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response, String flag, String recordId) throws Exception {
		return null;
	}

	// -----------------------------------------------------------发货统计
	// 显示发货统计
	@ResponseBody
	@RequestMapping(value = "basicController/afterSaleSendMsg")
	public Map<String, Object> afterSaleSendList(HttpServletRequest request, HttpServletResponse response, String region, String offset, String order, String sort) throws Exception {
		return null;
	}

	// @RequestBody Map<String, String> map
	// ---------------------------导入IMEI号
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("basicController/sendAsFileUpload")
	public Map<String, Object> sendFileUpload(@RequestParam("file1") CommonsMultipartFile file, HttpServletRequest request, String groupid) throws Exception {
		return null;
	}

	// -----------------------------------------------------发货
	@ResponseBody
	@RequestMapping(value = "basicController/sendAfterSale")
	public Map<String, Object> sendAfterSale(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}

	// ----------------------------------------------------收货确认；
	@ResponseBody
	@RequestMapping(value = "basicController/sendAfterSaleEdit")
	public Map<String, Object> sendAfterSaleEdit(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}

	// --------------------------------------------------备用机安装网点；
	@ResponseBody
	@RequestMapping(value = "basicController/afterSaleWebSiteMsg")
	public Map<String, Object> afterSaleWebSiteList(HttpServletRequest request, HttpServletResponse response, String region, String offset, String order, String sort) throws Exception {
		return null;
	}

	// 安装网点IMEI号；
	@ResponseBody
	@RequestMapping(value = "basicController/afterSaleWebSiteImei")
	public Map<String, Object> afterSaleWebSiteImeiList(HttpServletRequest request, HttpServletResponse response, String webSiteId) throws Exception {
		return null;
	}

	// 删除交换机信息；
	@ResponseBody
	@RequestMapping(value = "basicController/deleteSpareAsChange")
	public Map<String, Object> deleteSpareAsChange(String changId) throws Exception {
		return null;
	}

	// 保存售后网点信息
	@ResponseBody
	@RequestMapping(value = "basicController/addAfterSaleWebSite")
	public Map<String, Object> addAfterSaleWebSite(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}
	// 删除售后网点信息；
	@ResponseBody
	@RequestMapping(value = "basicController/deleteAfterSaleWebSite")
	public Map<String, Object> deleteAfterSaleWebSite(String webSiteId) throws Exception {
		return null;
	}
	
	
	
	
	
	
	
	

}
