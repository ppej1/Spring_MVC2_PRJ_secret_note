package com.sesoc.secret.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.GraphRepository;
import com.sesoc.secret.dto.GraphVO;

@Controller
public class GraphController {
	
	@Autowired
	GraphRepository repo;
	
	@RequestMapping(value = "/graphList", method = RequestMethod.GET)
	@ResponseBody
	public List<GraphVO> graphList(Model model){
		List<GraphVO> list = repo.graphList();
		System.out.println(list);
		return list;
	}
}
