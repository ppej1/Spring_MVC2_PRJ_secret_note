package com.sesoc.secret.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.SubClassRepository;
import com.sesoc.secret.dto.MainClassVO;

@Controller
public class SubClassController {
	
	@Autowired
	SubClassRepository repo;
	
	@RequestMapping(value = "/selectMainClassList",  method = RequestMethod.POST)
	@ResponseBody 
	public ArrayList<MainClassVO> selectMainClassList(){
		
		ArrayList<MainClassVO> list = repo.selectMainClassList();
		System.out.println(list);
		return list;
	}
}
