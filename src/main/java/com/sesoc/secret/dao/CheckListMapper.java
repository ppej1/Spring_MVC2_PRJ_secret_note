package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.CheckListVO;

public interface CheckListMapper {

	int insertCheckList(CheckListVO checklist);

	ArrayList<CheckListVO> selectListByDate(CheckListVO checkList);

}
