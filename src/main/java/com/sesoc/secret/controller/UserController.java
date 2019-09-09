package com.sesoc.secret.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sesoc.secret.dao.UserRepository;
import com.sesoc.secret.dto.User_VO;

@Controller
public class UserController {
	@Autowired
	UserRepository repo;
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String home(String userid, String userpwd, Model model) {
		System.out.println(userid + "," + userpwd);
		return "main";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String home(User_VO user, Model model) {
		System.out.println(user);
		return "index";
	}
}
