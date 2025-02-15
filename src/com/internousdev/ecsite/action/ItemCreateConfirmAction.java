package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class ItemCreateConfirmAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;
	private String errorMessage;
	private String itemName;
	private String itemPrice;
	private String itemStock;

	public String execute(){
		String result=SUCCESS;

		if(!(itemName.equals(""))
			&& !(itemPrice.equals(""))
			&& !(itemStock.equals(""))){
				session.put("itemName", itemName);
				session.put("itemPrice", itemPrice);
				session.put("itemStock", itemStock);

			try{
				Integer.parseInt(itemPrice);
				Integer.parseInt(itemStock);
			}catch(NumberFormatException e){
				result=ERROR;
				setErrorMessage("値段または在庫に数値以外が入力されています");
			}

		}else{
			result=ERROR;
			setErrorMessage("未入力の項目があります");
		}
		return result;
	}

	public String getItemName(){
		return itemName;
	}

	public void setItemName(String itemName){
		this.itemName=itemName;
	}

	public String getItemPrice(){
		return itemPrice;
	}

	public void setItemPrice(String itemPrice){
		this.itemPrice=itemPrice;
	}

	public String getItemStock(){
		return itemStock;
	}

	public void setItemStock(String itemStock){
		this.itemStock=itemStock;
	}

	public String getErrorMessage(){
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}

	public Map<String, Object> getSession(){
		return session;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session=session;
	}

}
