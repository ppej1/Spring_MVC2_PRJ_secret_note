package com.sesoc.secret.dao;

import java.util.List;

import com.sesoc.secret.dto.DisposalListVO;
import com.sesoc.secret.dto.DisposalVO;

public interface DisposalMapper {

	List<DisposalListVO> disposalList();

	List<DisposalListVO> disposalListOneDay(DisposalListVO disposal);

	List<DisposalListVO> disposalAmountPieChart(DisposalListVO disposal);

	List<DisposalVO> whoDestroyPieChart(DisposalVO who);
	
	List<DisposalListVO> materialChart2(DisposalListVO disposal);

}
