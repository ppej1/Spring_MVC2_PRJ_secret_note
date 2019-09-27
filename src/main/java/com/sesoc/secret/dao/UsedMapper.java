package com.sesoc.secret.dao;

import java.util.List;

import com.sesoc.secret.dto.UsedListVO;

public interface UsedMapper {

	List<UsedListVO> usedList();

	List<UsedListVO> usedListOneDay(UsedListVO used);
	
	List<UsedListVO> usedList2();

}
