package com.iov.icloud.controller;

import java.io.File;
import java.io.IOException;
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

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Controller
public class SpareController extends BasicController {

	private static Logger logger = Logger.getLogger(SpareController.class);
	// 定义全局list保存IMEI号；
	public static Map<String, List<String>> mapAll = new HashMap<String, List<String>>();
	// 定义备用机替换信息；
	List<Map<String, Object>> sparelist = new ArrayList<Map<String, Object>>();
	// 定义发货单信息；
	List<Map<String, Object>> sendSpareList = new ArrayList<Map<String, Object>>();

	public SpareController(){
		System.out.println("1111111111111111111133331111111111111111111");
	}
	
	
	
	
	// ----------------------------------------------------换机统计
	// 显示备用机信息
	@ResponseBody
	@RequestMapping(value = "basicController/spareChangMsg")
	public Map<String, Object> spareChangList(HttpServletRequest request, HttpServletResponse response, String region, String offset, String order, String sort) throws Exception {
		return null;
		
	}

	// 备用机换机统计-查询备用imei信息
	@ResponseBody
	@RequestMapping(value = "basicController/searchSpare")
	public Map<String, Object> searchSpareChang(HttpServletRequest request, HttpServletResponse response, String spareImei, String code) throws Exception {
		return null;
	}

	// 备用机换机统计-模糊查询备用imei信息
	@ResponseBody
	@RequestMapping(value = "basicController/fuzzySearchSpareChang")
	public Map<String, Object> fuzzySearchSpareChang(HttpServletRequest request, HttpServletResponse response, String spareImei, String region) throws Exception {
		return null;
	}

	// 备用机换机统计-编辑备用机信息；
	@ResponseBody
	@RequestMapping(value = "basicController/spareChangEdit")
	public Map<String, Object> spareChangEdit(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}

	// 备用机换机统计-备用机更换；
	@ResponseBody
	@RequestMapping(value = "basicController/spareImieChang")
	public Map<String, Object> spareImieChang(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}

	// 导出备用机统计信息；

	@RequestMapping(value = "basicController/spareExport")
	public void spareExport(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	}

	// -----------------------------------------------------------发货统计
	// 显示发货统计
	@ResponseBody
	@RequestMapping(value = "basicController/spareSendMsg")
	public Map<String, Object> spareSendList(HttpServletRequest request, HttpServletResponse response, String region, String offset, String order, String sort) throws Exception {
		return null;
	}

	// 添加下载模板；
	// ---------------------------下载模板1
	@ResponseBody
	@RequestMapping(value = "basicController/sendFileDownload")
	public ResponseEntity<byte[]> sendFileDownload(HttpServletRequest request) throws IOException {
		return null;
	}

	// ---------------------------导入IMEI号
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("basicController/sendFileUpload")
	public Map<String, Object> sendFileUpload(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request, String groupid) throws Exception {
		return null;
	}

	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("basicController/sendFileUpload1")
	public Map<String, Object> sendFileUpload1(@RequestParam("file1") CommonsMultipartFile file, HttpServletRequest request, String groupid) throws Exception {
		return null;
	}

	// ------------------------------------------------------移动发货申请/修改
	@ResponseBody
	@RequestMapping(value = "basicController/sendApplication")
	public Map<String, Object> sendApplication(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}

	// -----------------------------------------------------发货确定
	@ResponseBody
	@RequestMapping(value = "basicController/sendApplicationConfirm")
	public Map<String, Object> sendApplicationConfirm(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}

	// -----------------------------------------------------添加发货确定
	@ResponseBody
	@RequestMapping(value = "basicController/addSendApplicationConfirm")
	public Map<String, Object> addSendApplicationConfirm(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}
    //是否确认收货；
	@ResponseBody
	@RequestMapping(value = "basicController/goodsConfirm")
	public Map<String, Object> goodsConfirm(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}
	
	
	
	
	
	// ----------------------------------------------------发货申请单修改；
	@ResponseBody
	@RequestMapping(value = "basicController/sendApplicationEdit")
	public Map<String, Object> sendApplicationEdit(@RequestBody Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}

	// --------------------------------------------------显示操作日志；
	@ResponseBody
	@RequestMapping(value = "basicController/spareShowLog")
	public Map<String, Object> spareShowLog(@RequestBody Map<String, String> json,HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}
	
	
	
	
	

	// --------------------------------------------------显示全国各地区的发货数量，已安装，已激活，微信绑定，
	@ResponseBody
	@RequestMapping(value = "basicController/spareShow")
	public Map<String, Object> spareShow(HttpServletRequest request, HttpServletResponse response, String code) throws Exception {
		return null;
	}

	// 各省地区；
	// --------------------------------------------------显示全国各地区的发货数量，已安装，已激活，微信绑定，
	@ResponseBody
	@RequestMapping(value = "basicController/spareShowMap")
	public Map<String, Object> spareShowMap(HttpServletRequest request, HttpServletResponse response, String code) throws Exception {
		return null;
	}

	// 各市地区；
	@ResponseBody
	@RequestMapping(value = "basicController/spareShowProvinceMap")
	public Map<String, Object> spareShowProvinceMap(HttpServletRequest request, HttpServletResponse response, String code) throws Exception {
		return null;
	}

	/*
	 * 公共接口；
	 */
	// 地图编码；
	@ResponseBody
	@RequestMapping(value = "basicController/code_region")
	public List<Map<String, Object>> codeRegion(String code) throws Exception {
		return null;
	}

	@ResponseBody
	@RequestMapping(value = "basicController/code_region1")
	public List<Map<String, Object>> codeRegion1(String code) throws Exception {
		return null;
	}

	// 根据编码查询地址；
	@ResponseBody
	@RequestMapping(value = "basicController/code_region2")
	public List<Map<String, Object>> codeRegion2(String code) throws Exception {
		return null;
	}

	// 根据省名查地区编码；
	@ResponseBody
	@RequestMapping(value = "basicController/codeRegion3")
	public Map<String, Object> codeRegion3(String name) throws Exception {
		return null;
	}

	//删除交换机信息；
	@ResponseBody
	@RequestMapping(value = "basicController/deleteSpareChange")
	public Map<String, Object> deleteSpareChange(String changId) throws Exception {
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
