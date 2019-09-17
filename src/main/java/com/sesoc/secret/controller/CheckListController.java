package com.sesoc.secret.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import global.sesoc.ConsolGame.dto.ConsolGame;
import global.sesoc.ConsolGame.dto.ConsolGameStatusVO;

@Controller
public class CheckListController {
	
	
	
	
	/*ajax*/
	@RequestMapping(value = "/loadCheckList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<CheckListVO> listOfGame(CheckListVO consolGame, String searchList, String searchItem){
		repo.checkDelayLendForAllLentBook();
		ArrayList<ConsolGameStatusVO> list = repo.selectAll(consolGame,searchList,searchItem);

		return list;
	}
	
}
