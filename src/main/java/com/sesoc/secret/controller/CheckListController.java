package com.sesoc.secret.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.CheckListRepository;
import com.sesoc.secret.dto.CheckListVO;

@Controller
public class CheckListController {
	@Autowired
	CheckListRepository repo;
	
	@RequestMapping(value = "/insertCheckList", method = RequestMethod.GET)
	public String  insertCheckList(){
		return "popup/insertCheckList";
	}

	@RequestMapping(value = "/insertCheckList", method = RequestMethod.POST)
	public String  insertCheckList(CheckListVO checklist, HttpSession session){
		checklist.setRegistid((String)session.getAttribute("loginId"));
		checklist.setCompletes(checklist.getRdate());
		System.out.println(checklist);
		int result = repo.insertCheckList(checklist);
		return "popup/insertCheckList";
	}	
	
	
	/*ajax*/
	@RequestMapping(value = "/loadCheckList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<CheckListVO> loadCheckList(CheckListVO checkList){
		System.out.println(checkList);
		ArrayList<CheckListVO> list = repo.selectListByDate(checkList);
		return list;
	}
	
}
