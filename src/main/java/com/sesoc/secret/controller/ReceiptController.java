package com.sesoc.secret.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.ReceiptRepository;
import com.sesoc.secret.dto.ReceiptSubClassVO;

@Controller
public class ReceiptController {
	
	@Autowired
	ReceiptRepository repo;
	
	
	@RequestMapping(value = "/loadReceiptList", method = RequestMethod.GET)
	public String insertReceipt(String data, Model model) {
		System.out.println(data);
		model.addAttribute("selectDate", data);
		return "popup/loadReceiptList";
	}

	@RequestMapping(value = "/loadReceiptList", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<ReceiptSubClassVO> loadReceiptList(ReceiptSubClassVO receiptList) {
		System.out.println(receiptList);
		ArrayList<ReceiptSubClassVO> list = repo.selectListByDate(receiptList);
		return list;
	}
	@RequestMapping(value = "/deleteReceiptList", method = RequestMethod.POST)
	@ResponseBody
	public String deleteReceiptList(String rSerialNumber){
		System.out.println(rSerialNumber);
		repo.selectReceipt(rSerialNumber);
		repo.deleteStock(rSerialNumber);
		int result = repo.deleteReceiptList(rSerialNumber);
		if(result == 1){
			System.out.println("삭제 성공");
		}else{
			System.out.println("삭제 실패");
		}
		return "popup/loadReceiptList";
	}
}
