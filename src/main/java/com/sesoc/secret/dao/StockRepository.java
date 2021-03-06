package com.sesoc.secret.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.StockDetailVO;
import com.sesoc.secret.dto.AccountVO;
import com.sesoc.secret.dto.Employee_VO;
import com.sesoc.secret.dto.ReceiptSubClassVO;
import com.sesoc.secret.dto.ReceiptVO;
import com.sesoc.secret.dto.StockDetailNuturitionVO;
import com.sesoc.secret.dto.StockInfoVO;
import com.sesoc.secret.dto.StockVO;
import com.sesoc.secret.dto.SubClassVO;

@Repository
public class StockRepository {
	
	@Autowired
	SqlSession session;
	
	public ArrayList<SubClassVO> subLoad() {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.subLoad();
	}

	public ArrayList<Employee_VO> empLoad() {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.empLoad();
	}
	
	public ArrayList<AccountVO> accLoad() {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.accLoad();
	}
	
	public int insertRec(ReceiptVO rec) {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.insertRec(rec);
	}
	
	public int insertSt(StockVO st) {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.insertSt(st);
	}

	public SubClassVO subSelect(String scSerialNumber) {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.subSelect(scSerialNumber);
	}

	public ArrayList<StockInfoVO> selectStockAsLocation(SubClassVO sub) {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.selectStockAsLocation(sub);
	}

	public ArrayList<StockDetailVO> selectStockDetail(StockInfoVO info) {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.selectStockDetail(info);
	}

	public String selectrSerial() {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.selectrSerial();
	}

	public ArrayList<ReceiptSubClassVO> loadAllreceipt() {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.loadAllreceipt();
	}

	public StockDetailNuturitionVO selectOnebyserial(StockDetailNuturitionVO stock) {
		StockMapper mapper = session.getMapper(StockMapper.class);
		
		return mapper.selectOnebyserial(stock);
	}


	public int insertUses(StockVO stock) {
		int result =0;
		StockMapper mapper = session.getMapper(StockMapper.class);
		int result1 = mapper.insertUses(stock);
		if (result1 == 1) {
			StockVO stockR = mapper.selectStockBySerial(stock);
			System.out.println("DD" + stockR);
			int amount = stockR.getSAmount();
			int useAmount = stock.getSAmount();
			int nowAmount = amount - useAmount;
			stock.setSAmount(nowAmount);
			
			result = mapper.updateStock(stock);
			
		}

		
		return result;
	}

	public int insertDisposal(StockVO stock) {
		int result =0;
		StockMapper mapper = session.getMapper(StockMapper.class);
		int result1 = mapper.insertDisposal(stock);
		if (result1 == 1) {
			StockVO stockR = mapper.selectStockBySerial(stock);
			System.out.println("DD" + stockR);
			int amount = stockR.getSAmount();
			int useAmount = stock.getSAmount();
			int nowAmount = amount - useAmount;
			stock.setSAmount(nowAmount);
			
			result = mapper.updateStock(stock);
		}
		return result;
	
	}
}
