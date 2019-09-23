package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UsedListVO {
	String uSerialNumber;
	String mClass;
	String location;
	String sName;
	String userName;
	String rank;
	int uAmount;
	String uDate;
}
