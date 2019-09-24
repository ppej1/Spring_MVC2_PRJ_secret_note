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
}
