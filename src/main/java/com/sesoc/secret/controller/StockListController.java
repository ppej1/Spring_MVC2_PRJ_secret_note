package com.sesoc.secret.controller;



import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sesoc.secret.dao.StockRepository;
import com.sesoc.secret.dto.AccountVO;
import com.sesoc.secret.dto.Employee_VO;
import com.sesoc.secret.dto.ReceiptSubClassVO;
import com.sesoc.secret.dto.ReceiptVO;
import com.sesoc.secret.dto.StockDetailVO;
import com.sesoc.secret.dto.StockInfoVO;
import com.sesoc.secret.dto.StockVO;
import com.sesoc.secret.dto.SubClassVO;
@Controller
public class StockListController {
	@Autowired
	StockRepository repo;
	
	@RequestMapping(value = "/insertSubClass", method = RequestMethod.GET)
	public String  insertSubClass(){
		return "popup/insertSubClass";
	}	
	
	@RequestMapping(value = "/subListLoad", method = RequestMethod.POST)
	@ResponseBody
	public List<SubClassVO> subListLoad(){
		
		ArrayList<SubClassVO> list = repo.subLoad();
		return list;
	}	
	
	@RequestMapping(value = "/empListLoad", method = RequestMethod.POST)
	@ResponseBody
	public List<Employee_VO> empListLoad(){
		
		ArrayList<Employee_VO> list = repo.empLoad();
		
		return list;
	}	
	
	@RequestMapping(value = "/accListLoad", method = RequestMethod.POST)
	@ResponseBody
	public List<AccountVO> accListLoad(){
		
		ArrayList<AccountVO> list = repo.accLoad();
		
		return list;
	}	
	
	@RequestMapping(value = "/recieptReg", method = RequestMethod.POST)
	@ResponseBody
	public int recieptReg(ReceiptVO rec){
		
		System.out.println(rec);
		repo.insertRec(rec);
		return 0;
	}	
	
	@RequestMapping(value = "/stockReg", method = RequestMethod.POST)
	@ResponseBody
	public int stockReg(StockVO st){
		String scSerialNumber = st.getScSerialNumber();
		SubClassVO sub = repo.subSelect(scSerialNumber);
		System.out.println(sub);
		
		System.out.println(st);
		st.setDeDate(sub.getEDate());
		String rserial = repo.selectrSerial();
		System.out.println(rserial);
		st.setRSerialNumber(rserial);
		repo.insertSt(st);
		System.out.println("확인");
		return 0;
	}	
	
	@RequestMapping(value = "/selectStockAsLocation", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<StockInfoVO> selectStockAsLocation(SubClassVO sub){
			System.out.println(sub);
			ArrayList<StockInfoVO> list = repo.selectStockAsLocation(sub);
			System.out.println(list);
		return list;
	}
	
	@RequestMapping(value = "/selectStockDetail", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<StockDetailVO> selectStockDetail(StockInfoVO info){
			System.out.println(info);
			ArrayList<StockDetailVO> list = repo.selectStockDetail(info);
			System.out.println(list);
		return list;
	}

	@RequestMapping(value = "/loadAllreceipt", method = RequestMethod.POST)
	@ResponseBody
	public ArrayList<ReceiptSubClassVO> loadAllreceipt(){
			ArrayList<ReceiptSubClassVO> list = repo.loadAllreceipt();
			System.out.println(list);
		return list;
	}	
	
}
