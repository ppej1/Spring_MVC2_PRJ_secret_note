package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.ReceiptSubClassVO;

public interface ReceiptListMapper {

	ArrayList<ReceiptSubClassVO> selectListByDate(ReceiptSubClassVO receiptList);

	int deleteReceiptList(String rSerialNumber);

	ReceiptSubClassVO selectReceipt(String rSerialNumber);

	int deleteStockList(String rSerialNumber);

}
