package com.sesoc.secret.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.UsedRepository;
import com.sesoc.secret.dto.LossVO;
import com.sesoc.secret.dto.UsageVO;
import com.sesoc.secret.dto.UsedListVO;
import com.sesoc.secret.dto.UsesVO;

@Controller
public class UsedController {
	
	@Autowired
	UsedRepository repo;
	
	
	
	@RequestMapping(value = "/usedList", method = RequestMethod.GET)
	@ResponseBody
	public List<UsedListVO> usedList(Model model){
		List<UsedListVO> list = repo.usedList();
		return list;
	}
	
	@RequestMapping(value = "/usedListOneDay", method = RequestMethod.POST)
	@ResponseBody
	public List<UsedListVO> usedListOneDay(UsedListVO used){
		List<UsedListVO> list = repo.usedListOneDay(used);
		return list;
	}
	
	@RequestMapping(value = "/usedAmountPieChart", method = RequestMethod.POST)
	@ResponseBody
	public List<UsedListVO> usedAmountPieChart(UsedListVO used){
		List<UsedListVO> list = repo.usedAmountPieChart(used);
		return list;
	}	
	
	@RequestMapping(value = "/whoUsedPieChart", method = RequestMethod.POST)
	@ResponseBody
	public List<UsesVO> whoUsedPieChart(UsesVO who){
		List<UsesVO> list = repo.whoUsedPieChart(who);
		return list;
	}	
	
	@RequestMapping(value = "/materialChart1", method = RequestMethod.POST)
	@ResponseBody
	public List<UsedListVO> materialChart1(UsedListVO used){
		List<UsedListVO> list = repo.materialChart1(used);
		return list;
	}	
	
	@RequestMapping(value = "/usedList2", method = RequestMethod.GET)
	@ResponseBody
	public List<UsageVO> usedList2(Model model){
		List<UsageVO> list = repo.usedList2();
		return list;
	}
	
	@RequestMapping(value = "/usedList3", method = RequestMethod.GET)
	@ResponseBody
	public List<UsageVO> usedList3(UsageVO year){
		List<UsageVO> list = repo.usedList3(year);
		return list;
	}
}
