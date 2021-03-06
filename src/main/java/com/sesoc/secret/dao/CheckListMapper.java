package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.CheckListVO;

public interface CheckListMapper {

	int insertCheckList(CheckListVO checklist);

	ArrayList<CheckListVO> selectListByDate(CheckListVO checkList);

	int successCheckList(CheckListVO checkList);

	int deleteCheckList(CheckListVO checkList);

	ArrayList<CheckListVO> selectAllList();

}
