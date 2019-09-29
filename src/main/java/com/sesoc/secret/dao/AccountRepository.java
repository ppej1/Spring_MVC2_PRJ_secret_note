package com.sesoc.secret.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.AccountVO;

@Repository
public class AccountRepository {
	@Autowired
	SqlSession session;
	public int insertAccount(AccountVO account) {
		AccountMapper mapper = session.getMapper(AccountMapper.class);
		return mapper.insertAccount(account);
	}
	public ArrayList<AccountVO> selectAllList() {
		AccountMapper mapper = session.getMapper(AccountMapper.class);
		return mapper.selectAllList();
	}

}
