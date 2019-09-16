package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class SubClassVO {
	String scSerialNumber;
	String mcserialNumber;
	String foodCode;
	String sImg;
	String sName;
	String unit;
	int price;
	String location;
	String eDate;
}
