package com.sesoc.secret.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.UsedListVO;

@Repository
public class UsedRepository {
	@Autowired
	SqlSession session;

	public List<UsedListVO> usedList() {
		UsedMapper mapper = session.getMapper(UsedMapper.class);
	
		return mapper.usedList();
	}

	public List<UsedListVO> usedListOneDay(UsedListVO used) {
		UsedMapper mapper = session.getMapper(UsedMapper.class);
		
		return mapper.usedListOneDay(used);
	}
}
