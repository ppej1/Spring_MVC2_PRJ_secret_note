package com.sesoc.secret.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.CheckListRepository;
import com.sesoc.secret.dao.DeleteRepository;
import com.sesoc.secret.dto.CheckListVO;

@Controller
public class CheckListController {
	@Autowired
	CheckListRepository repo;
	@Autowired
	DeleteRepository del;
	
	@RequestMapping(value = "/insertCheckList", method = RequestMethod.GET)
	public String  insertCheckList(){
		del.delete();
		return "popup/insertCheckList";
		
	}

	/*ajax*/
	@RequestMapping(value = "/loadCheckList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<CheckListVO> loadCheckList(CheckListVO checkList){
		del.delete();
		ArrayList<CheckListVO> list = repo.selectListByDate(checkList);
		return list;
	}

	@RequestMapping(value = "/successCheckList", method = RequestMethod.POST)
	@ResponseBody
	public int successCheckList(CheckListVO checkList, HttpSession session){
		int result = del.delete();
		checkList.setFinisher((String)session.getAttribute("loginId"));
		int result = repo.successCheckList(checkList);
		return 0;
	}
	
	@RequestMapping(value = "/deleteCheckList", method = RequestMethod.POST)
	@ResponseBody
	public int deleteCheckList(CheckListVO checkList){
		del.delete();
		int result = repo.deleteCheckList(checkList);
		return 0;
	}
	
	@RequestMapping(value = "/loadAllCheckList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<CheckListVO> loadAllCheckList(){
		del.delete();
		ArrayList<CheckListVO> list = repo.selectAllList();
		return list;
	}	

	
	@RequestMapping(value = "/insertCheckList", method = RequestMethod.POST)
	@ResponseBody
	public String  insertCheckList(CheckListVO checklist, HttpSession session){
		del.delete();
		checklist.setRegistid((String)session.getAttribute("loginId"));
		int result = repo.insertCheckList(checklist);
		return "popup/insertCheckList";
	}		
	
}
