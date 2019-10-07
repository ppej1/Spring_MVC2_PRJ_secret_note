package com.sesoc.secret.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sesoc.secret.dto.Employee_VO;

@Repository
public class EmployeeRepository {
	@Autowired
	SqlSession session;

	public int insert(Employee_VO employee) {
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		
		int result = mapper.insert(employee);
		
		return result;
	}

	public Employee_VO selectone(Employee_VO employee) {
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		
		return mapper.selectone(employee);
	}

	public int insertCheckList(Employee_VO employee) {
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		return mapper.insertUserInfo(employee);
	}

	public int modifyUserInfo(Employee_VO employee) {
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		return mapper.modifyUserInfo(employee);
	}

	public Employee_VO checklist(Employee_VO employee) {
		EmployeeMapper mapper = session.getMapper(EmployeeMapper.class);
		return mapper.selectone(employee);
	}

}
