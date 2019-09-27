package com.sesoc.secret.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.StockRepository;
import com.sesoc.secret.dto.StockVO;

public class StockListController {
	@Autowired
	StockRepository repo;

	@RequestMapping(value = "/loadStockList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<StockVO>loadCheckList(StockVO stockList){
		System.out.println(stockList);
		ArrayList<StockVO>list = repo.selectListByDate(stockList);
		System.out.println(list);
		return list;
	}
	@RequestMapping(value = "/deleteStockList", method = RequestMethod.POST)
	@ResponseBody
	public String deleteStockList(StockVO stockList){
		int result = repo.deleteStockList(stockList);
		return "success";
	}
	@RequestMapping(value = "updateStockList", method = RequestMethod.POST)
	@ResponseBody
	public String updateStockList(StockVO stockList, HttpSession session){
		stockList.setSRegistid((String)session.getAttribute("loginId"));
		System.out.println(stockList);

		int result = repo.successStockList(stockList);
		return "success";
	}
}
