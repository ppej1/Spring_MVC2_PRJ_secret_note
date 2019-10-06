package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StockDetailNuturitionVO {
	String sImg;
	private String sName; 			// 이름 
	private String sSerialNumber;  // 재고 시리얼
	private String scSerialNumber;		//상품 시리얼 
	String mcSerialNumber;
	private String mClass;						//대분류
	private int sAmount;      			// 현재고
	private int rAmount;				//등록 재고
	private String unit;						// 단위
	private String sDate;				//확인일
	String rDate;
	private String deDate;				//폐기 예정일	
	int price;
	String location;
	String foodCode;					//식품코드
	int energyNumber;
	double protein;
	double carbon;
	double sugar;
	double natrium;
	double chole;	
	private String userid;
	String accountName;
	String rComment;


	
	
}
