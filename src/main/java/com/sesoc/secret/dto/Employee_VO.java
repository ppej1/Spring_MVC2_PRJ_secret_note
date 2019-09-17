package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Employee_VO {
	private String userid;
	private String userpwd;
	private String eImg;
	private String userName;
	private String rank;
	private String email;
	private String ePhone;
	private String status;
}
