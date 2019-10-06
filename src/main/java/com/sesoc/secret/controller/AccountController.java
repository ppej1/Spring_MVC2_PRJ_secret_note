package com.sesoc.secret.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sesoc.secret.dao.AccountRepository;
import com.sesoc.secret.dto.AccountVO;
import com.sesoc.secret.dto.CheckListVO;
import com.sesoc.secret.util.FileService;
@Controller
public class AccountController {

	@Autowired
	AccountRepository repo;
	
	final String uploadPath="../../../workspace/Final_project/Final_Project/src/main/webapp/resources/img/company"; //C 드라이버 밑에 만들어짐

	
	@RequestMapping(value = "/insertAccount", method = RequestMethod.GET)
	public String  insertAccount(){
		return "popup/insertAccount";
	}
	
	
	@RequestMapping(value = "/insertAccount", method = RequestMethod.POST)
	public String home(AccountVO account, Model model, MultipartFile upload) {
		String savedfile = FileService.saveFile(upload, uploadPath);
		account.setAImg(savedfile);
		if (account.getAImg() == "") {
			account.setAImg("nobrand.jpg");
		}
		int result = repo.insertAccount(account);
		return "redirect:/insertAccount";
	}
	
	@RequestMapping(value = "/loadAccountList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<AccountVO> loadAccountList(){
		ArrayList<AccountVO> list = repo.selectAllList();
		return list;
	}
	
	
}
