package com.sesoc.secret.dao;

import java.util.List;

import com.sesoc.secret.dto.LossVO;

public interface LossMapper {

	List<LossVO> lossList(LossVO year);
	List<LossVO> lossList2();
	List<LossVO> lossListD(LossVO year);
	List<LossVO> lossListU(LossVO year);
}
