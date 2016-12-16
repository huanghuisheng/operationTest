package com.iov.icloud.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.iov.icloud.entity.DeviceClient;
import com.iov.icloud.entity.SystemAdmin;


@Controller
public class GroupController extends BasicController {
	private static Logger logger = Logger.getLogger(GroupController.class);

	@ResponseBody
	@RequestMapping(value = "basicController/addGroup")
	public Map<String, Object> addGroup(HttpServletRequest request, HttpServletResponse response, String groupName) throws Exception {
     return null;
	}

	@ResponseBody
	@RequestMapping(value = "basicController/deleteGroup")
	public Map<String, Object> deleteGroup(HttpServletRequest request, HttpServletResponse response, String groupid) throws Exception {
		 return null;
	}

	@ResponseBody
	@RequestMapping(value = "basicController/updateGroup")
	public Map<String, Object> updateGroup(HttpServletRequest request, HttpServletResponse response, String groupid, String groupName) throws Exception {
		 return null;
	}

	// 显示分组信息；
	@ResponseBody
	@RequestMapping(value = "basicController/showGroup")
	public Map<String, Object> showGroup(HttpServletRequest request, HttpServletResponse response) throws Exception {
		 return null;
	}

	// ---------------------------------------------------------获取单个分组名称
	@ResponseBody
	@RequestMapping(value = "basicController/singleShowGroupName")
	public Map<String, Object> singleShowGroupName(HttpServletRequest request, HttpServletResponse response, String groupId) throws Exception {
		 return null;
	}

	// ------------------------------------------------------------------------设备管理；
	// 单个设备导入；
	@ResponseBody
	@RequestMapping(value = "basicController/addDeviceImei")
	public Map<String, Object> addDeviceImei(HttpServletRequest request, HttpServletResponse response, String imei, String groupid) throws Exception {
		 return null;
	}

	// 单个设备更新；
	@ResponseBody
	@RequestMapping(value = "basicController/updateDeviceImei")
	public Map<String, Object> updateDeviceImei(HttpServletRequest request, HttpServletResponse response, String imei, String groupid, String id) throws Exception {
		 return null;
	}

	@ResponseBody
	@RequestMapping(value = "basicController/deleteDeviceImei")
	public Map<String, Object> deleteDeviceImei(HttpServletRequest request, HttpServletResponse response, String imei, String groupid) throws Exception {
		 return null;
	}

	// ---------------------------下载模板1
	@ResponseBody
	@RequestMapping(value = "basicController/firstFileDownload")
	public ResponseEntity<byte[]> firstFileDownload(HttpServletRequest request) throws IOException {
		 return null;
	}

	// ----------------------------批量导入
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping("basicController/fileUpload2")
	public Map<String, Object> fileUpload2(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request, String groupid) throws Exception {
		 return null;
	}

	// ------------------------------------------------------------------------------显示分组imei号
	@ResponseBody
	@RequestMapping(value = "basicController/showGroupImei")
	public Map<String, Object> showGroupImei(HttpServletRequest request, HttpServletResponse response, String groupId, String offset) throws Exception {
		 return null;
	}

	// ------------------------------------------------------------------------用户账号管理

	// 显示用户账号
	@ResponseBody
	@RequestMapping(value = "basicController/showAdminAccout")
	public Map<String, Object> showAdminAccout(HttpServletRequest request) throws Exception {
		 return null;
	}

	@ResponseBody
	@RequestMapping(value = "basicController/addAdminAccout")
	public Map<String, Object> addAdminAccout(@ModelAttribute(" SystemAdmin ") SystemAdmin admin, HttpServletRequest request) throws Exception {
		 return null;
	}

	@ResponseBody
	@RequestMapping(value = "basicController/deleteAdminAccount")
	public Map<String, Object> deleteAdminAccount(HttpServletRequest request, String adminID) throws Exception {
		 return null;
	}

	@ResponseBody
	@RequestMapping(value = "basicController/updateAdminAccount")
	public Map<String, Object> updateAdminAccount(@ModelAttribute(" SystemAdmin ") SystemAdmin admin, HttpServletRequest request) throws Exception {
		 return null;
	}

	// ---------------------------------------一级账号个人用户管理；
	@ResponseBody
	@RequestMapping(value = "basicController/updatePersonalAdminAccount")
	public Map<String, Object> updatePersonalAdminAccount(HttpServletRequest request, String adminName) throws Exception {
		 return null;
	}

	@ResponseBody
	@RequestMapping(value = "basicController/updatePersonalAdminAccount1")
	public Map<String, Object> updatePersonalAdminAccount(HttpServletRequest request, String oldAdminPass, String adminPass1) throws Exception {
		 return null;
	}

	// ------------------------------------日志查询；
	@ResponseBody
	@RequestMapping(value = "basicController/searchOperationlog")
	public Map<String, Object> searchOperationlog(HttpServletRequest request, String offset, String name, String type, String time1, String time2) throws Exception {
		 return null;
	}

	// ---------------------------------显示操作日志；
	@ResponseBody
	@RequestMapping(value = "basicController/showOperationlog")
	public Map<String, Object> showOperationlog(HttpServletRequest request, String offset, String order, String sort) throws Exception {
		 return null;
	}

	// ---------------------------------------------2级用户管理
	// ----------------------------------------------------------------设备管理
	// 新增单一设备；
	@ResponseBody
	@RequestMapping(value = "basicController/addDeviceClient")
	public void addDeviceClient(@ModelAttribute("DeviceClient") DeviceClient deviceClient, HttpServletRequest request) throws Exception {
	
	}

	@ResponseBody
	@RequestMapping(value = "basicController/deleteDeviceClient")
	public void deleteDeviceClient(HttpServletRequest request, String deviceClientId) throws Exception {
		

	}

	@ResponseBody
	@RequestMapping(value = "basicController/updateDeviceClient")
	public void updateDeviceClient(@ModelAttribute("DeviceClient") DeviceClient deviceClient, HttpServletRequest request) throws Exception {
		
	}

	// -----------------------------------------------------------------imei号批量导入；
	@ResponseBody
	@RequestMapping("basicController/secondFileUpload")
	public Map<String, Object> fileUpload(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request) throws Exception {
		 return null;
	}

	@ResponseBody
	@RequestMapping(value = "basicController/fileDownload")
	public ResponseEntity<byte[]> download(HttpServletRequest request) throws IOException {
		 return null;
	}

	// ---------------------------------------2级账号个人用户管理；
	@ResponseBody
	@RequestMapping(value = "basicController/updatePersonalClientAccount")
	public void updatePersonalClientAccount(HttpServletRequest request, String adminName) throws Exception {
	}

	@ResponseBody
	@RequestMapping(value = "basicController/updatePersonalClientAccount1")
	public void updatePersonalClientAccount1(HttpServletRequest request, String oldAdminPass, String adminPass1) throws Exception {

	}

	// ----------------------------------显示二级账号
	// 显示用户账号
	@ResponseBody
	@RequestMapping(value = "basicController/showSecondeClientAccout")
	public Map<String, Object> showSecondeAdminAccout(HttpServletRequest request, String offset) throws Exception {
		 return null;
	}

	// ------------------------------------------分组实时模糊查询
	@ResponseBody
	@RequestMapping(value = "basicController/fuzzySearch")
	public Map<String, Object> fuzzySearch(HttpServletRequest request, String search, String groupid) throws Exception {
		 return null;
	}

	// -------------------------------------------------------二级用户查询；
	@ResponseBody
	@RequestMapping(value = "basicController/secondSearch")
	public Map<String, Object> secondSearch(HttpServletRequest request, HttpServletResponse response, String search) throws Exception {
		 return null;
	}

}
