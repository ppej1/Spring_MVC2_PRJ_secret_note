package com.sesoc.secret.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sesoc.secret.dao.StockRepository;
@Controller
public class StockListController {
	@Autowired
	StockRepository repo;
	
	@RequestMapping(value = "/insertSubClass", method = RequestMethod.GET)
	public String  insertSubClass(){
		return "popup/insertSubClass";
	}	

}
