package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StockVO {
	private String sSerialNumber;
	private String rDate;
	private String rRegistid;
	private String sDate;
	private String sRegistid;
	private int amount;
	private String unit;
	private int price;
	private String location;
	private String deDate;
	private String status;
}
