package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.AccountVO;
import com.sesoc.secret.dto.Employee_VO;
import com.sesoc.secret.dto.ReceiptSubClassVO;
import com.sesoc.secret.dto.ReceiptVO;
import com.sesoc.secret.dto.StockDetailNuturitionVO;
import com.sesoc.secret.dto.StockDetailVO;
import com.sesoc.secret.dto.StockInfoVO;
import com.sesoc.secret.dto.StockVO;
import com.sesoc.secret.dto.SubClassVO;

public interface StockMapper {

	ArrayList<SubClassVO> subLoad();
	ArrayList<Employee_VO> empLoad();
	ArrayList<AccountVO> accLoad();
	int insertRec(ReceiptVO rec);
	int insertSt(StockVO st);
	SubClassVO subSelect(String scSerialNumber);
	ArrayList<StockInfoVO> selectStockAsLocation(SubClassVO sub);
	ArrayList<StockDetailVO> selectStockDetail(StockInfoVO info);
	String selectrSerial();
	ArrayList<ReceiptSubClassVO> loadAllreceipt();
	StockDetailNuturitionVO selectOnebyserial(StockDetailNuturitionVO stock);
}
