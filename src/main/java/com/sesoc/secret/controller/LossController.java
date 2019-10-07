package com.sesoc.secret.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.LossRepository;
import com.sesoc.secret.dto.LossVO;

@Controller
public class LossController {
	
	@Autowired
	LossRepository repo;
	
	@RequestMapping(value = "/lossListD", method = RequestMethod.POST)
	@ResponseBody
	public List<LossVO> lossListD(LossVO year){
		List<LossVO> list = repo.lossListD(year);
		System.out.println(list);
		return list;
	}
	@RequestMapping(value = "/lossListY", method = RequestMethod.POST)
	@ResponseBody
	public List<LossVO> lossListY(LossVO year){
		List<LossVO> list = repo.lossListY(year);
		System.out.println(list);
		return list;
	}
	
	
	@RequestMapping(value = "/lossList2", method = RequestMethod.GET)
	@ResponseBody
	public List<LossVO> lossList2(){
		List<LossVO> list = repo.lossList2();
		return list;
	}
	
	@RequestMapping(value = "/lossList3", method = RequestMethod.GET)
	@ResponseBody
	public List<LossVO> lossList3(LossVO year){
		List<LossVO> list = repo.lossList3(year);
		return list;
	}
	
}
