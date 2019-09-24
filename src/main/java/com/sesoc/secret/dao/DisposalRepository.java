package com.sesoc.secret.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.DisposalListVO;

@Repository
public class DisposalRepository {
	@Autowired
	SqlSession session;

	public List<DisposalListVO> disposalList() {
		DisposalMapper mapper = session.getMapper(DisposalMapper.class);
		return mapper.disposalList();
	}

	public List<DisposalListVO> disposalListOneDay(DisposalListVO disposal) {
		DisposalMapper mapper = session.getMapper(DisposalMapper.class);
		return mapper.disposalListOneDay(disposal);
	}
}
