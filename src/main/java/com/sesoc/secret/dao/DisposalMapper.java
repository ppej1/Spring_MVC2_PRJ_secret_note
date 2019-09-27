package com.sesoc.secret.dao;

import java.util.List;

import com.sesoc.secret.dto.DisposalListVO;

public interface DisposalMapper {

	List<DisposalListVO> disposalList();

	List<DisposalListVO> disposalListOneDay(DisposalListVO disposal);

	List<DisposalListVO> disposalAmountPieChart1(DisposalListVO disposal);

}
