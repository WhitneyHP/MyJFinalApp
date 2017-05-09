package cn.banking.controller;

import java.util.List;

import com.jfinal.core.Controller;

import cn.banking.model.InquiryInfo;


public class InquiryController extends Controller {
	public void index(){
		this.render("/inquiry_form.jsp");
	}
	
	public void info(){
		String userId = this.getPara("userId");
		System.out.println(userId);
		
		List<InquiryInfo> account_list = InquiryInfo.icursor.find(
				"select account_number, card_number, account_type, account_status"
				+ " from saving_account where user_id = ?", userId);
		List<InquiryInfo> user_list = InquiryInfo.icursor.find(
				"select user_name from user_info where user_id = ?", userId);
		
		
		
		InquiryInfo user_info = user_list.get(0);
		this.setAttr("userName", user_info._getAttrValues()[0]);

		this.setAttr("accountList", account_list);
		
		
		
		
		
		
		this.render("/inquiry_info.jsp");
	
	}
}
