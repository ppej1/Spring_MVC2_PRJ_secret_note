package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LossVO {
	String sName;
	int price;
	int dAmount;
	int uAmount;
	String mdate;
	String ydate;
	String condition;
	String scSerialNumber;
}