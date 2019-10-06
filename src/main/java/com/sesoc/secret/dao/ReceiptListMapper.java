package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.ReceiptSubClassVO;
import com.sesoc.secret.dto.StockDetailVO;

public interface ReceiptListMapper {

	ArrayList<ReceiptSubClassVO> selectListByDate(ReceiptSubClassVO receiptList);

	int deleteReceiptList(String rSerialNumber);

	StockDetailVO selectReceipt(String rSerialNumber);

	int deleteStockList(String rSerialNumber);

}
