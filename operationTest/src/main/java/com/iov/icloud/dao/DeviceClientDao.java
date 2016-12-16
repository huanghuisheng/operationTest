package com.iov.icloud.dao;


import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iov.icloud.entity.DeviceClient;

@Repository
public class DeviceClientDao extends BasicDao<DeviceClient> {
	

	
	//	@SuppressWarnings("unchecked")
	public List<DeviceClient> selectList1111() {
		
		String a=DeviceClient.class.getName()+".getUser1";
		System.out.println("name is ---"+a);
		
		return sqlSession.selectList(DeviceClient.class.getName()+".getUser1");
	}
	
	
}