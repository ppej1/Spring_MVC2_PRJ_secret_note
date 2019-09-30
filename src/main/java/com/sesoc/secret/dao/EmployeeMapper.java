package com.sesoc.secret.dao;

import com.sesoc.secret.dto.Employee_VO;

public interface EmployeeMapper {

	int insert(Employee_VO employee);
	Employee_VO selectone(Employee_VO employee);
	int insertUserInfo(Employee_VO employee);
	int modifyUserInfo(Employee_VO employee);

}
