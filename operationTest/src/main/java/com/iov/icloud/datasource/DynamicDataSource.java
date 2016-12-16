package com.iov.icloud.datasource;

import java.util.logging.Logger;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;

public class DynamicDataSource extends AbstractRoutingDataSource {

	@Override
	public Logger getParentLogger() {
		System.out.println("-------66666666666-----");
		return null;
	}

	@Override
	protected Object determineCurrentLookupKey() {
		System.out.println("-------5555555555555-----"+DataSourceContextHolder.getDbType());
		
		return DataSourceContextHolder.getDbType();
		
		
	}

}
