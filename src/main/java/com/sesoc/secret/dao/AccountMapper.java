package com.sesoc.secret.dao;

import java.util.ArrayList;

import com.sesoc.secret.dto.AccountVO;

public interface AccountMapper {

	int insertAccount(AccountVO account);

	ArrayList<AccountVO> selectAllList();

}
