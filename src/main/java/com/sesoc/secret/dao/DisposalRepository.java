package com.sesoc.secret.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.DisposalListVO;
import com.sesoc.secret.dto.DisposalVO;

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

	public List<DisposalListVO> disposalAmountPieChart(DisposalListVO disposal) {
		DisposalMapper mapper = session.getMapper(DisposalMapper.class);
		return mapper.disposalAmountPieChart(disposal);
	}

	public List<DisposalVO> whoDestroyPieChart(DisposalVO who) {
		DisposalMapper mapper = session.getMapper(DisposalMapper.class);
		return mapper.whoDestroyPieChart(who);
	}
}
