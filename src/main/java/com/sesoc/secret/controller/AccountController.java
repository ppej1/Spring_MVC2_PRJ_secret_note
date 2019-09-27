package com.sesoc.secret.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class AccountController {

	
	
	@RequestMapping(value = "/insertAccount", method = RequestMethod.GET)
	public String  insertAccount(){
		return "popup/insertAccount";
	}
	
}
