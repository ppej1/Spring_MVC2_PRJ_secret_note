package com.sesoc.secret.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.UsedRepository;
import com.sesoc.secret.dto.UsedListVO;

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
	
	@RequestMapping(value = "/usedList2", method = RequestMethod.GET)
	@ResponseBody
	public List<UsedListVO> usedList2(Model model){
		List<UsedListVO> list = repo.usedList2();
		return list;
	}
}
