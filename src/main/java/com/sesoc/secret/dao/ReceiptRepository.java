package com.sesoc.secret.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.ReceiptSubClassVO;
import com.sesoc.secret.dto.StockDetailVO;

@Repository
public class ReceiptRepository {
	@Autowired
	SqlSession session;
	
	public ArrayList<ReceiptSubClassVO> selectListByDate(ReceiptSubClassVO receiptList) {
		ReceiptListMapper mapper = session.getMapper(ReceiptListMapper.class);
		ArrayList<ReceiptSubClassVO> list  = mapper.selectListByDate(receiptList);
		for (ReceiptSubClassVO receipt : list) {
			if (receipt.getRDate() == null ) {
				receipt.setRDate(" ");
			}
		}
		return list;
	}

	public int deleteStock(String rSerialNumber) {
		ReceiptListMapper mapper = session.getMapper(ReceiptListMapper.class);
		return mapper.deleteStockList(rSerialNumber);
	}
	
	public int deleteReceiptList(String  rSerialNumber) {
		ReceiptListMapper mapper = session.getMapper(ReceiptListMapper.class);

		
		StockDetailVO receipt = mapper.selectReceipt(rSerialNumber);
		int result = 0;
		System.out.println(receipt);
		if(receipt.getSAmount() == receipt.getRAmount()){
			System.out.println("ddd");
			return mapper.deleteReceiptList(rSerialNumber);

		}
		return result;

	}
	
	
}
