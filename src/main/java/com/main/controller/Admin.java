package com.main.controller;

public class Admin {

	public String id;
	public String pass;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Admin [id=" + id + ", pass=" + pass + "]";
	}
	
}
