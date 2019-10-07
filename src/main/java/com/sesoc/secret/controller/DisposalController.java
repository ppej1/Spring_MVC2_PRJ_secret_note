package com.sesoc.secret.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.DeleteRepository;
import com.sesoc.secret.dao.DisposalRepository;
import com.sesoc.secret.dto.DisposalListVO;
import com.sesoc.secret.dto.DisposalVO;
import com.sesoc.secret.dto.StockVO;

@Controller
public class DisposalController {
	
	@Autowired
	DisposalRepository repo;
	@Autowired
	DeleteRepository del;
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
		List<DisposalVO> list = repo.whoDestroyPieChart(who);
		return list;
	}	
	
	@RequestMapping(value = "/materialChart2", method = RequestMethod.POST)
	@ResponseBody
	public List<DisposalListVO> materialChart2(DisposalListVO disposal){
		List<DisposalListVO> list = repo.materialChart2(disposal);

		return list;
	}
}
