package com.admin.auth;

public class Admin {

	public String admin_id;
	public String pass;
	public String getAdmin_id() {
		return admin_id;
	}
	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Admin [admin_id=" + admin_id + ", pass=" + pass + "]";
	}
	
}
