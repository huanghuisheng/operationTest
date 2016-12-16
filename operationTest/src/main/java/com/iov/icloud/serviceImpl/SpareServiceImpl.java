package com.iov.icloud.serviceImpl;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Service;
import com.iov.icloud.service.SpareService;

@Service("spareService")
public class SpareServiceImpl extends BasicService implements SpareService {

	public Map<String, Object> spareChangList(String region, String offset, String order, String sort) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> searchSpareChang(String spareImei, String code) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> fuzzySearchSpareChang(String spareImei, String region) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object spareChangEdit(Map<String, String> json, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object spareImieChang(Map<String, String> json, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Map<String, Object> spareSendList(String region, String offset, String order, String sort) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object sendApplication(Map<String, String> json, HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object sendApplicationConfirm(Map<String, String> json, HttpServletRequest request, List<String> listImei) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object addSendApplicationConfirm(Map<String, String> json, HttpServletRequest request, List<String> listImei) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object sendApplicationEdit(Map<String, String> json, HttpServletRequest request, List<String> listImei) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object goodsConfirm(Map<String, String> json, HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public void spareExport(List<Map<String, Object>> listImei, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void sendSpareExport(List<Map<String, Object>> listImei, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public List<Map<String, Object>> spareShowLog(String flag, String recordId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> spareShow(HttpServletRequest request, String code) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> spareShowMap(HttpServletRequest request, String code) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> spareShowProvinceMap(HttpServletRequest request, String code) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> codeRegion(String flag) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> codeRegion1(String flag) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> codeRegion2(String flag) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Map<String, Object>> codeRegion3(String name) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Object deleteSpareChange(String changId) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
