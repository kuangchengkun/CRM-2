package com.crm.entity;

import java.util.List;

import org.springframework.stereotype.Component;
@Component
public class Fenye<Students> {
	private Integer page;
	private Integer pageSize;
	private Integer total;
	private List<Students> rows;
	
	
	private String s_name;
	private String s_phone;
	private Integer s_ispay;
	private Integer s_isvalid;
	private Integer s_isreturnvist;
	private String s_qq;
	private String s_createtime;
	private String s_hometime;
	private String s_firstvisittime;
	private String s_paytime;
	private String s_inclasstime;
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public List<Students> getRows() {
		return rows;
	}
	public void setRows(List<Students> rows) {
		this.rows = rows;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_phone() {
		return s_phone;
	}
	public void setS_phone(String s_phone) {
		this.s_phone = s_phone;
	}
	public Integer getS_ispay() {
		return s_ispay;
	}
	public void setS_ispay(Integer s_ispay) {
		this.s_ispay = s_ispay;
	}
	public Integer getS_isvalid() {
		return s_isvalid;
	}
	public void setS_isvalid(Integer s_isvalid) {
		this.s_isvalid = s_isvalid;
	}
	public Integer getS_isreturnvist() {
		return s_isreturnvist;
	}
	public void setS_isreturnvist(Integer s_isreturnvist) {
		this.s_isreturnvist = s_isreturnvist;
	}
	public String getS_qq() {
		return s_qq;
	}
	public void setS_qq(String s_qq) {
		this.s_qq = s_qq;
	}
	public String getS_createtime() {
		return s_createtime;
	}
	public void setS_createtime(String s_createtime) {
		this.s_createtime = s_createtime;
	}
	public String getS_hometime() {
		return s_hometime;
	}
	public void setS_hometime(String s_hometime) {
		this.s_hometime = s_hometime;
	}
	public String getS_firstvisittime() {
		return s_firstvisittime;
	}
	public void setS_firstvisittime(String s_firstvisittime) {
		this.s_firstvisittime = s_firstvisittime;
	}
	public String getS_paytime() {
		return s_paytime;
	}
	public void setS_paytime(String s_paytime) {
		this.s_paytime = s_paytime;
	}
	public String getS_inclasstime() {
		return s_inclasstime;
	}
	public void setS_inclasstime(String s_inclasstime) {
		this.s_inclasstime = s_inclasstime;
	}
	
	
}