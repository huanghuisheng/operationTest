package com.iov.icloud.entity;

import java.util.Date;

public class StatisticsUserlist {

    private Integer id;

  
    private String imei;

    
    private String deviceName;


    private String userName;


    private Integer grade;

  
    private Integer collide;

  
    private Integer trun;

  
    private Integer speedDown;


    private Integer speedUp;


    private Integer fatigue;

  
    private Float totalTime;

 
    private Float totalMileage;


    private String userIdentity;

 
    private String department;

 
    private Date createTime;

  
    private String statisticsTime;


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getImei() {
		return imei;
	}


	public void setImei(String imei) {
		this.imei = imei;
	}


	public String getDeviceName() {
		return deviceName;
	}


	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public Integer getGrade() {
		return grade;
	}


	public void setGrade(Integer grade) {
		this.grade = grade;
	}


	public Integer getCollide() {
		return collide;
	}


	public void setCollide(Integer collide) {
		this.collide = collide;
	}


	public Integer getTrun() {
		return trun;
	}


	public void setTrun(Integer trun) {
		this.trun = trun;
	}


	public Integer getSpeedDown() {
		return speedDown;
	}


	public void setSpeedDown(Integer speedDown) {
		this.speedDown = speedDown;
	}


	public Integer getSpeedUp() {
		return speedUp;
	}


	public void setSpeedUp(Integer speedUp) {
		this.speedUp = speedUp;
	}


	public Integer getFatigue() {
		return fatigue;
	}


	public void setFatigue(Integer fatigue) {
		this.fatigue = fatigue;
	}


	public Float getTotalTime() {
		return totalTime;
	}


	public void setTotalTime(Float totalTime) {
		this.totalTime = totalTime;
	}


	public Float getTotalMileage() {
		return totalMileage;
	}


	public void setTotalMileage(Float totalMileage) {
		this.totalMileage = totalMileage;
	}


	public String getUserIdentity() {
		return userIdentity;
	}


	public void setUserIdentity(String userIdentity) {
		this.userIdentity = userIdentity;
	}


	public String getDepartment() {
		return department;
	}


	public void setDepartment(String department) {
		this.department = department;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public String getStatisticsTime() {
		return statisticsTime;
	}
	public void setStatisticsTime(String statisticsTime) {
		this.statisticsTime = statisticsTime;
	}

 
   
}