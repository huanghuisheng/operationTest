package com.iov.icloud.serviceImpl;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.httpclient.util.DateUtil;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import com.iov.icloud.service.DeviceService;

@Service("deviceService")
public class DeviceServiceImpl extends BasicService implements DeviceService {
	private static Logger logger = Logger.getLogger(DeviceServiceImpl.class);

	public List<Map<String, Object>> firstFuzzyAllSearch(HttpServletRequest request, String search) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> firstSearch(HttpServletRequest request, String search) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> groupSearch(HttpServletRequest request, String search, String groupid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> singleDriveBehavior(HttpServletRequest request, String behavior, String timeFlag, String code) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<List<Map<String, Object>>> ruleActivityArea(HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> divercategory(HttpServletRequest request, String code) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> diverRuleTime(HttpServletRequest request, String code) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> DriveBehaviorGrade(HttpServletRequest request, String timeFlag, String code) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> homepageDevice(String imei) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> getUserList(HttpServletRequest request, int beginIndex, String order, String sort, String timeFlag, String timeFlag1) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> singleDeviceDriveBehavior(HttpServletRequest request, String imei, String startTime, String endTime) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> singleDeviceSingleDriveBehavior(HttpServletRequest request, String imei, String behavior, String startTime, String endTime) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> singleDeviceCollide(String imei, String startTime, String endTime) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> singleDiverRuleTime(String imei, String timeFlag) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> singleDiverRuleArea(HttpServletRequest request, String imei, String timeFlag) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Object> singleDiverTrave(HttpServletRequest request, String imei, String time1, String time2) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	


}
