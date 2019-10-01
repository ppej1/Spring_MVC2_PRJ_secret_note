package com.sesoc.secret.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ReceiptController {
	@RequestMapping(value = "/insertReceipt", method = RequestMethod.GET)
	public String  insertReceipt(String data, Model model){
		System.out.println(data);
		model.addAttribute("selectDate", data);
		return "popup/insertReceipt";
	}	
}
