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

	public List<LossVO> lossList() {
		LossMapper mapper = session.getMapper(LossMapper.class);
	
		return mapper.lossList();
	}
}
