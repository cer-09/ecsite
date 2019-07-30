package com.internousdev.ecsite.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;


public class BuyItemAction extends ActionSupport implements SessionAware{

	public Map<String, Object> session;
	private int count;
	private String pay;
	private String errorMessage;
	private String payment;

	public String execute(){

		String result=SUCCESS;
		int intCount=Integer.parseInt(session.get("count").toString());
		int intPrice=Integer.parseInt(session.get("buyItem_price").toString());
		int itemStock=Integer.parseInt(session.get("item_stock").toString());

		session.put("count", count);
		session.put("total_price", intCount*intPrice);

		if(pay.equals("1")){
			payment="現金払い";
			session.put("pay", payment);
		}else{
			payment="クレジットカード";
			session.put("pay", payment);
		}

		if(count>itemStock){
			setErrorMessage("在庫が足りません");
			return ERROR;
		}
		return result;
	}

	public void setCount(int count){
		this.count=count;
	}

	public void setPay(String pay){
		this.pay=pay;
	}

	public String getErrorMessage(){
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage){
		this.errorMessage=errorMessage;
	}

	public Map<String, Object> getSession(){
		return this.session;
	}

	@Override
	public void setSession(Map<String, Object> session){
		this.session=session;
	}

}

