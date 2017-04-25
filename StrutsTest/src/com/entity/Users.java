package com.entity;

public class Users {
	

	private String Name;
	private String Pwd;
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPwd() {
		return Pwd;
	}
	public void setPwd(String pwd) {
		Pwd = pwd;
	}
	
	public Users(){}
	
	public Users(String Name,String Pwd)
	{
		this.Name=Name;
		this.Pwd=Pwd;
	}

}
