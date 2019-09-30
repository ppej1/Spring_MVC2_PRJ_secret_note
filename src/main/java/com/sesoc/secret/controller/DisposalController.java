package com.sesoc.secret.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.DisposalRepository;
import com.sesoc.secret.dto.DisposalListVO;
import com.sesoc.secret.dto.DisposalVO;

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

		List<DisposalListVO> list = repo.disposalListOneDay(disposal);

		return list;
	}
	
	
	@RequestMapping(value = "/disposalAmountPieChart", method = RequestMethod.POST)
	@ResponseBody
	public List<DisposalListVO> disposalAmountPieChart(DisposalListVO disposal){

		List<DisposalListVO> list = repo.disposalAmountPieChart(disposal);

		return list;
	}
	
	@RequestMapping(value = "/whoDestroyPieChart", method = RequestMethod.POST)
	@ResponseBody
	public List<DisposalVO> whoDestroyPieChart(DisposalVO who){
		System.out.println("pie"+who);
		List<DisposalVO> list = repo.whoDestroyPieChart(who);
		System.out.println("pie22"+list);
		return list;
	}	
}
