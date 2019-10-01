package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class DisposalVO {
	String dSerialNumber;
	String scSerialNumber;
	String userid;
	String dDate;
	int dAmount;
}
