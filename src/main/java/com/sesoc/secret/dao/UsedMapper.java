package com.sesoc.secret.dao;

import java.util.List;

import com.sesoc.secret.dto.StockVO;
import com.sesoc.secret.dto.UsageVO;
import com.sesoc.secret.dto.UsedListVO;
import com.sesoc.secret.dto.UsesVO;

public interface UsedMapper {

	List<UsedListVO> usedList();

	List<UsedListVO> usedListOneDay(UsedListVO used);
	
	List<UsedListVO> usdeAmountPieChart(UsedListVO used);

	List<UsesVO> whoUsedPieChart(UsesVO who);
	
	List<UsedListVO> materialChart1(UsedListVO used);

	List<UsageVO> usedList2();

	List<UsageVO> usedList3(UsageVO year);





}
