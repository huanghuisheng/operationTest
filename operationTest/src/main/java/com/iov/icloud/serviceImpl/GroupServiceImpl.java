package com.iov.icloud.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.iov.icloud.entity.DeviceClient;
import com.iov.icloud.entity.SystemAdmin;
import com.iov.icloud.service.GroupService;

@Service("groupService")
public class GroupServiceImpl extends BasicService implements GroupService {

	public Map<String, Object> searchOperationlog(HttpServletRequest request, String offset, String name, String type, String time1, String time2) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> showOperationlog(HttpServletRequest request, String offset, String order, String sort) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> firstAccoutSaveGroup(HttpServletRequest request, String groupName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String firstAccoutDeleteGroup(HttpServletRequest request, int groupid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String firstAccoutUpdateGroup(HttpServletRequest request, int groupid, String groupName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> firstAccoutShowGroup(HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> singleShowGroupName(HttpServletRequest request, String groudId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> addAdminAccount(HttpServletRequest request, SystemAdmin admin) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String deleteAdminAccount(HttpServletRequest request, String adminId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String updateAdminAccount(HttpServletRequest request, SystemAdmin admin) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> showAdminAccout(HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String updatePersonalAdminAccount(HttpServletRequest request, String adminName) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String updatePersonalAdminAccount1(HttpServletRequest request, String oldAdminPass, String adminPass1) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> addDeviceImei(HttpServletRequest request, String imei, int groupid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> addDeviceImeiGroup(HttpServletRequest request, List imei, int groupid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String updateDeviceImei(HttpServletRequest request, String imei, int groupid, int id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public String deleteDeviceImei(HttpServletRequest request, String imei, int groupid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> showGroupImei(HttpServletRequest request, String groupid, int offset) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> showSecondeClientAccout(HttpServletRequest request, int offset) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public void addDeviceClient(HttpServletRequest request, DeviceClient deviceClient) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void deleteDeviceClient(HttpServletRequest request, String deviceClientId) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void updateDeviceClient(HttpServletRequest request, DeviceClient deviceClient) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void addDeviceClientGroup(HttpServletRequest request, List<List> list) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public List<Map<String, Object>> fuzzySearch(HttpServletRequest request, String search, String groupid) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> secondSearch(HttpServletRequest request, String search) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	
}
