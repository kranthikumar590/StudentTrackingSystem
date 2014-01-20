package com.admin.auth;

import org.springframework.context.annotation.Scope;


public class Admin {

	public String school_name;
	public String password;
	public String school_id;
	public String access;
	public String getSchool_name() {
		return school_name;
	}
	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSchool_id() {
		return school_id;
	}
	public void setSchool_id(String school_id) {
		this.school_id = school_id;
	}
	public String getAccess() {
		return access;
	}
	public void setAccess(String access) {
		this.access = access;
	}
	@Override
	public String toString() {
		return "Admin [school_name=" + school_name + ", password=" + password
				+ ", school_id=" + school_id + ", access=" + access + "]";
	}
	
	
}
