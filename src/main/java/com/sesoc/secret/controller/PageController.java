package com.sesoc.secret.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sesoc.secret.dao.DeleteRepository;

@Controller
public class PageController {

	@RequestMapping(value = "/introducemenu", method = RequestMethod.GET)
	public String  introducemenu(){
		return "introducemenu";
	}	
	@RequestMapping(value = "/CheckListSystem", method = RequestMethod.GET)
	public String  CheckListSystem(){
		return "CheckListSystem";
	}
	
	@RequestMapping(value = "/StockListSystem", method = RequestMethod.GET)
	public String  StockListSystem(){
		return "StockListSystem";
	}	
	@RequestMapping(value = "/UseDisposalSystem", method = RequestMethod.GET)
	public String  UseDisposalSystem(){
		return "UseDisposalSystem";
	}		
	@RequestMapping(value = "/ChartSystem", method = RequestMethod.GET)
	public String  ChartSystem(){
		return "ChartSystem";
	}
}
