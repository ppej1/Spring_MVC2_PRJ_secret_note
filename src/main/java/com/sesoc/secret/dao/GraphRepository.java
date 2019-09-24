package com.sesoc.secret.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.GraphVO;

@Repository
public class GraphRepository {
	@Autowired
	SqlSession session;

	public List<GraphVO> graphList() {
		GraphMapper mapper = session.getMapper(GraphMapper.class);
	
		return mapper.graphList();
	}
}
