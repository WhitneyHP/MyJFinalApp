package cn.banking.controller;

import java.util.List;

import com.jfinal.core.Controller;

import cn.banking.model.AdminInfo;

public class AdminController extends Controller {
	public void index() {

		this.render("/index.jsp");

	}

	public void sayHello() {

		String userName = this.getPara("userName");

		String sayHello = "Hello " + userName + "，welcome to JFinal world.";
		
		List users = AdminInfo.dao.find("SELECT * FROM admin_info");
		
		AdminInfo ai = (AdminInfo) users.get(0);
		
		
        setAttr("size", ai._getAttrNames()[0]);
        
		this.setAttr("sayHello", sayHello);

		this.render("/hello.jsp");

	}
	
	public void inquiry(){
		
	}
	
}
