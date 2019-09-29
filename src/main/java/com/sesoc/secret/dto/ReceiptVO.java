package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ReceiptVO {
	String rSerialNumber;
	String scSerialNumber;
	String userid;
	int rAmount;
	String rDate;
	String rComment;
	String accountserial;
}
