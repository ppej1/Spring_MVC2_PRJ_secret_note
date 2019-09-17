package com.sesoc.secret.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.CheckListVO;

@Repository
public class CheckListRepository {
	@Autowired
	SqlSession session;

	public ArrayList<CheckListVO> selectListByDate(CheckListVO checkList) {
		// TODO Auto-generated method stub
		return null;
	}

	public int insertCheckList(CheckListVO checklist) {
		CheckListMapper mapper = session.getMapper(CheckListMapper.class);
		
		return mapper.insertCheckList(checklist);
	}
	
	
	
}
