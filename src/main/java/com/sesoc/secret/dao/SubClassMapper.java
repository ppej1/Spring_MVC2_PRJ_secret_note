package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.MainClassVO;
import com.sesoc.secret.dto.SubClassVO;

public interface SubClassMapper {

	ArrayList<MainClassVO> selectMainClassList();
	int insert(SubClassVO subclass);
	SubClassVO chaingeSubClassPicture(SubClassVO sub);
}
