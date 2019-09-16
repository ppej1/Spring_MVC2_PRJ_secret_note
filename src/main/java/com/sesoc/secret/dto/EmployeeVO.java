package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EmployeeVO {
	String userid;
	String userpwd;
	String eImag;
	String userName;
	String rank;
	String email;
	String ePhone;
	String status;
}
