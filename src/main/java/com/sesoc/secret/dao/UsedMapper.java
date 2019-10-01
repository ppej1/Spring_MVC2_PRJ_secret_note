package com.sesoc.secret.dao;

import java.util.List;

import com.sesoc.secret.dto.UsedListVO;
import com.sesoc.secret.dto.UsesVO;

public interface UsedMapper {

	List<UsedListVO> usedList();

	List<UsedListVO> usedListOneDay(UsedListVO used);
	
	List<UsedListVO> usdeAmountPieChart(UsedListVO used);

	List<UsesVO> whoUsedPieChart(UsesVO who);

}
