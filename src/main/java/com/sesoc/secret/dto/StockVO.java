package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StockVO {
	private String sSerialNumber;
	private String scSerialNumber;
	private String userid;
	private String sAmount;
	private String sDate;
	private String deDate;
}
