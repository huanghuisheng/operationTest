package com.iov.icloud.entity;

import java.util.Date;

public class OperationLog {

    private Integer id;


    private String name;

    private String address;


    private String type;

    private Byte flag;


    private String content;

  
    private Date createTime;


    private String group;


	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public Byte getFlag() {
		return flag;
	}


	public void setFlag(Byte flag) {
		this.flag = flag;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public Date getCreateTime() {
		return createTime;
	}


	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}


	public String getGroup() {
		return group;
	}
	
	public void setGroup(String group) {
		this.group = group;
	}


    
}