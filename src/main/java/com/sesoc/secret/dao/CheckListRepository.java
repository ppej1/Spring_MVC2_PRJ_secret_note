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
		CheckListMapper mapper = session.getMapper(CheckListMapper.class);
		ArrayList<CheckListVO> list  = mapper.selectListByDate(checkList);
		for (CheckListVO check : list) {
			if (check.getFdate() == null ) {
				check.setFdate(" ");
				check.setFinisher(" ");
			}
		}
		return list;
	}

	public int insertCheckList(CheckListVO checkList) {
		CheckListMapper mapper = session.getMapper(CheckListMapper.class);
		return mapper.insertCheckList(checkList);
	}

	public int successCheckList(CheckListVO checkList) {
		CheckListMapper mapper = session.getMapper(CheckListMapper.class);
		return mapper.successCheckList(checkList);
	}

	public int deleteCheckList(CheckListVO checkList) {
		CheckListMapper mapper = session.getMapper(CheckListMapper.class);
		return mapper.deleteCheckList(checkList);
	}

	public ArrayList<CheckListVO> selectAllList() {
		CheckListMapper mapper = session.getMapper(CheckListMapper.class);
		ArrayList<CheckListVO> list  = mapper.selectAllList();
		return list;
	}
	
	
	
}
