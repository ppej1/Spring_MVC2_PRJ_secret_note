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
	
	@RequestMapping(value = "/lossList", method = RequestMethod.GET)
	@ResponseBody
	public List<LossVO> lossList(LossVO year){
		System.out.println(year);
		List<LossVO> list = repo.lossList(year);
		return list;
	}
	
	@RequestMapping(value = "/lossList2", method = RequestMethod.GET)
	@ResponseBody
	public List<LossVO> lossList2(Model model){
		List<LossVO> list = repo.lossList2();
		return list;
	}
}
