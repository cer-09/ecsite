package com.internousdev.ecsite.dto;

public class LoginDTO{

	private String loginId;
	private String loginPassword;
	private String userName;
	private String adminFlg;
	private boolean loginFlg;

	public String getLoginId(){
		return loginId;
	}

	public void setLoginId(String loginId){
		this.loginId=loginId;
	}

	public String getLoginPassword(){
		return loginPassword;
	}

	public void setLoginPassword(String loginPassword){
		this.loginPassword=loginPassword;
	}

	public String getUserName(){
		return userName;
	}

	public void setUserName(String userName){
		this.userName=userName;
	}

	public String getAdmin_flg(){
		return adminFlg;
	}

	public void setAdmin_flg(String adminFlg){
		this.adminFlg=adminFlg;
	}

	public boolean getLoginFlg(){
		return loginFlg;
	}

	public void setLoginFlg(boolean loginFlg){
		this.loginFlg=loginFlg;
	}

}
