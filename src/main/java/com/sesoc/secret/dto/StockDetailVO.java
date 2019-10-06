package com.sesoc.secret.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class StockDetailVO {
	private String sSerialNumber;  // 재고 시리얼
	private String sName; 			// 이름 
	private String scSerialNumber;		//상품 시리얼 
	private String rSerialNumber;
	private int sAmount;      			// 현재고
	private int rAmount;				//등록 재고
	private String sDate;				//확인일
	private String deDate;				//폐기 예정일	
	private String unit;						// 단위
	private String mClass;						//대분류
}
