package com.sesoc.secret.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.StockVO;

@Repository
public class DeleteRepository {
	@Autowired
	SqlSession session;
	
	
	public int delete() {
		int result =0;
		StockMapper mapper = session.getMapper(StockMapper.class);
		DeleteMapper mapper2 = session.getMapper(DeleteMapper.class);
		ArrayList<StockVO> DeleteList = mapper2.selectDeleteList();
		for (StockVO stock : DeleteList) {
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

		}
		return result;
	}
}
