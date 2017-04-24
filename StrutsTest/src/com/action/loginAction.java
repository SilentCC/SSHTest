package com.action;
import com.opensymphony.xwork2.ActionSupport;

public class loginAction extends ActionSupport{
	
	private String name;
	private String pwd;
	
	private String result;
	
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	
	public String execute(){
		
		System.out.println("ok");
		System.out.println(name+" "+pwd);
		if(name.equals("123")&&pwd.equals("123")){
			result = "{\"login\":\"success\"}";  
			return SUCCESS;
		}
		else{
			result = "{\"login\":\"fail\"}";  
			return INPUT;	
		}
				
	}

}
