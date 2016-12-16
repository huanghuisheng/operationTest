package com.iov.icloud.entity;

public class GroupBcategory {

    private Integer id;
    private Integer taxiDriver;
    private Integer truckDriver;
    private Integer officeWorker;
    private Integer other;
    private String region;
    private Integer group;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}


	public Integer getTaxiDriver() {
		return taxiDriver;
	}


	public void setTaxiDriver(Integer taxiDriver) {
		this.taxiDriver = taxiDriver;
	}


	public Integer getTruckDriver() {
		return truckDriver;
	}


	public void setTruckDriver(Integer truckDriver) {
		this.truckDriver = truckDriver;
	}


	public Integer getOfficeWorker() {
		return officeWorker;
	}


	public void setOfficeWorker(Integer officeWorker) {
		this.officeWorker = officeWorker;
	}


	public Integer getOther() {
		return other;
	}


	public void setOther(Integer other) {
		this.other = other;
	}


	public String getRegion() {
		return region;
	}


	public void setRegion(String region) {
		this.region = region;
	}


	public Integer getGroup() {
		return group;
	}


	public void setGroup(Integer group) {
		this.group = group;
	}

   
}