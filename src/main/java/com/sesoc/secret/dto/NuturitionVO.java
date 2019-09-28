package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class NuturitionVO {
	String nutritionserial;
	String foodCode;
	String foodTitle;
	String indexs;
	String foodGroup;
	int energyNumber;
	double protein;
	double carbon;
	double sugar;
	double natrium;
	double chole;
}
