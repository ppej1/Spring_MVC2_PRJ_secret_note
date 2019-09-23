package com.sesoc.secret.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dto.CommentsVO_img;

@Controller
public class MemoListController {

	
	@RequestMapping(value = "/loadAllMemo", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<CommentsVO_img> loadAllCheckList(){
		System.out.println();
		return null;
	}		
	
}
