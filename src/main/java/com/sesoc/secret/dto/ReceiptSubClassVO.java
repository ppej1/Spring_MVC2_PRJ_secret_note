package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReceiptSubClassVO {
	String rSerialNumber;
	String scSerialNumber;
	String userid;
	int rAmount;
	String rDate;
	String rComment;
	String accountserial;
	String mcserialNumber;
	String foodCode;
	String sImg;
	String sName;
	String unit;
	int price;
	String location;
	String eDate;
	String mClass;

}
