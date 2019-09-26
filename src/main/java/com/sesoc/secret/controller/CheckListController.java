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
		System.out.println("인풋됨"+ checklist);
		int result = repo.insertCheckList(checklist);
		return "popup/insertCheckList";
	}	
	
	
	/*ajax*/
	@RequestMapping(value = "/loadCheckList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<CheckListVO> loadCheckList(CheckListVO checkList){
		System.out.println(checkList);
		ArrayList<CheckListVO> list = repo.selectListByDate(checkList);
		System.out.println(list);
		return list;
	}

	@RequestMapping(value = "/successCheckList", method = RequestMethod.POST)
	@ResponseBody
	public int successCheckList(CheckListVO checkList, HttpSession session){
		checkList.setFinisher((String)session.getAttribute("loginId"));
		System.out.println(checkList);

		int result = repo.successCheckList(checkList);
		return 0;
	}
	
	@RequestMapping(value = "/deleteCheckList", method = RequestMethod.POST)
	@ResponseBody
	public int deleteCheckList(CheckListVO checkList){
		int result = repo.deleteCheckList(checkList);
		return 0;
	}
	
	@RequestMapping(value = "/loadAllCheckList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<CheckListVO> loadAllCheckList(){
		ArrayList<CheckListVO> list = repo.selectAllList();
		return list;
	}	

	
}
