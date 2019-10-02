package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.ReceiptSubClassVO;

public interface ReceiptListMapper {

	ArrayList<ReceiptSubClassVO> selectListByDate(ReceiptSubClassVO receiptList);

	int deleteReceiptList(ReceiptSubClassVO receiptList);

}
