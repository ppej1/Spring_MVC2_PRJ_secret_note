package com.sesoc.secret.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.DisposalRepository;
import com.sesoc.secret.dto.DisposalListVO;

@Controller
public class DisposalController {
	
	@Autowired
	DisposalRepository repo;
	
	@RequestMapping(value = "/disposalList", method = RequestMethod.GET)
	@ResponseBody
	public List<DisposalListVO> disposalList(){
		List<DisposalListVO> list = repo.disposalList();
		return list;
	}
	@RequestMapping(value = "/disposalListOneDay", method = RequestMethod.POST)
	@ResponseBody
	public List<DisposalListVO> disposalListOneDay(DisposalListVO disposal){
		System.out.println(disposal);
		List<DisposalListVO> list = repo.disposalListOneDay(disposal);
		System.out.println(list);
		return list;
	}
	
	
	@RequestMapping(value = "/disposalAmountPieChart1", method = RequestMethod.POST)
	@ResponseBody
	public List<DisposalListVO> disposalAmountPieChart1(DisposalListVO disposal){
		System.out.println(disposal);
		List<DisposalListVO> list = repo.disposalAmountPieChart1(disposal);
		System.out.println(list);
		return list;
	}	
}
