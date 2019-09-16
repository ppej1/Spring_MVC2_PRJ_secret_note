package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CheckListVO {
	String ckSerialNumber;
	String userid;
	String ckTitle;
	String completes;
	String importance;
	
}
