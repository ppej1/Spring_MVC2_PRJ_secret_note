package com.sesoc.secret.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.MainClassVO;
import com.sesoc.secret.dto.SubClassVO;


@Repository
public class SubClassRepository {
	@Autowired
	SqlSession session;

	public ArrayList<MainClassVO> selectMainClassList() {
		SubClassMapper mapper = session.getMapper(SubClassMapper.class);
		
		return mapper.selectMainClassList();
	}
	
	public int insert(SubClassVO subclass) {
		SubClassMapper mapper = session.getMapper(SubClassMapper.class);
		return mapper.insert(subclass);
	}
	
}
