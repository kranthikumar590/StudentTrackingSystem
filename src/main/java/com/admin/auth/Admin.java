package com.admin.auth;


public class Admin {

	public String school_name;
	public String password;
	public String school_id;
	public String role;
	public int no_of_buses;
	public int no_of_schools;
	public String admin_name;
	public String email;
	public long ph_no;
	public boolean access;
	public String address;
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getNo_of_buses() {
		return no_of_buses;
	}
	public void setNo_of_buses(int no_of_buses) {
		this.no_of_buses = no_of_buses;
	}
	public int getNo_of_schools() {
		return no_of_schools;
	}
	public void setNo_of_schools(int no_of_schools) {
		this.no_of_schools = no_of_schools;
	}
	public String getAdmin_name() {
		return admin_name;
	}
	public void setAdmin_name(String admin_name) {
		this.admin_name = admin_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPh_no() {
		return ph_no;
	}
	public void setPh_no(long ph_no) {
		this.ph_no = ph_no;
	}
	public boolean isAccess() {
		return access;
	}
	public void setAccess(boolean access) {
		this.access = access;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "Admin [school_name=" + school_name + ", password=" + password
				+ ", school_id=" + school_id + ", role=" + role
				+ ", no_of_buses=" + no_of_buses + ", no_of_schools="
				+ no_of_schools + ", admin_name=" + admin_name + ", email="
				+ email + ", ph_no=" + ph_no + ", access=" + access
				+ ", address=" + address + "]";
	}
	
}
