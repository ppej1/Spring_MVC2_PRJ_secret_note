package com.sesoc.secret.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.LossVO;

@Repository
public class LossRepository {
	@Autowired
	SqlSession session;

	public List<LossVO> lossListD(LossVO year) {
		LossMapper mapper = session.getMapper(LossMapper.class);
		return mapper.lossListD(year);

	}
	public List<LossVO> lossListY(LossVO year) {
		LossMapper mapper = session.getMapper(LossMapper.class);
		return mapper.lossListU(year);

	}	
	public List<LossVO> lossList2() {
		LossMapper mapper = session.getMapper(LossMapper.class);
	
		return mapper.lossList2();
	}

	public List<LossVO> lossList3(LossVO year) {
		LossMapper mapper = session.getMapper(LossMapper.class);
		
		return mapper.lossListD(year);
	}
	
}
