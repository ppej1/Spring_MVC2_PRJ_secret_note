package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentsVO {
	String cSerialNumber;
	String ckSerialNumber;
	String userid;
	String comments;
	String cDate;
	
}