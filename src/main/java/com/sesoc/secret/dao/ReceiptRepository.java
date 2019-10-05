package com.sesoc.secret.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.ReceiptSubClassVO;

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

	public ReceiptSubClassVO selectReceipt(int rSerialNumber) {
		ReceiptListMapper mapper = session.getMapper(ReceiptListMapper.class);
		ReceiptSubClassVO receipt = mapper.selectReceipt(rSerialNumber);
		return receipt;
	}

	public int deleteReceiptList(ReceiptSubClassVO receiptList) {
		ReceiptListMapper mapper = session.getMapper(ReceiptListMapper.class);
		return mapper.deleteReceiptList(receiptList);
	}

}
