<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<head>
<script>
	var nowdate = '';
	var stock_num = -1;

	function setnowDate() {
		nowdate = startDate;
	}

	function set_stock_num() {
		stock_num = st_num;
	}

	function stockListPage() {
		setnowDate(startDate);

		selectList(stock_num);



	$(function() {
		init();
		$("#stockRegist").on('click', stockregist);
		$(".del").on('click', stockDelete);
		$("#frozen").on('click', fSearch);
		$("#cold").on('click', cSearch);
		$("#storage").on('click', sSearch);
		$("#cancel").on('click', function() {
			$("#stockRegist").val("재고 등록");
		})
	});

	// 초기화
	function init() {

		$.ajax({
			type : 'GET',
			url : 'stockList',
			success : output
		})
	}

	// 냉동고 검색
	function fSearch() {
		var location = $(this).text();
		$.ajax({
			type : 'GET',
			url : 'fSearch',
			data : "forzen=" + location,
			success : output
		});
	}
	function cSearch() {
		var location = $(this).text();
		$.ajax({
			type : 'GET',
			url : 'cSearch',
			data : "cold=" + location,
			success : output
		});
	}
	function sSearch() {
		var location = $(this).text();
		$.ajax({
			type : 'GET',
			url : 'sSearch',
			data : "location=" + location,
			success : output
		});
	}

	function output(resp) {
		$("#stockRegist").val("재고등록");
		var tag = "";
		tag += '<thead>';
		tag += '<tr>';
		tag += '<td>입고일</td>';
		tag += '<td>입고 담당자</td>';
		tag += '<td class="tm-product-name" colspan="3">&nbsp;</td>';
		tag += '<td>재고 확인일</td>';
		tag += '<td>재고 담당자</td>';
		tag += '<td rowspan="2">&nbsp;</td>';
		tag += '</tr>';
		tag += '<tr>';
		tag += '<td>재료명</td>';
		tag += '<td>갯수</td>';
		tag += '<td>단위</td>';
		tag += '<td>가격</td>';
		tag += '<td>위치</td>';
		tag += '<td>폐기 예정일</td>';
		tag += '<td>상태</td>';
		tag += '</tr>';
		tag += '</thead>';
		
		if (resp == 0) {
			tag += '<tr>';
			tag += '<th colspan="8">체크리스트가 없습니다</th>';
			tag += '</tr>';

		} else {
		$.each(resp,function(index, item) {
			tag += '<tbody>';
			tag += '<tr>';
			tag += '<td>' + item.rDate + '</td>';
			tag += '<td>' + item.rRegistid + '</td>';
			tag += '<td class="tm-product-name" colspan="3">&nbsp;</td>';
			tag += '<td>' + item.sDate'</td>';
			tag += '<td>' + item.sRegistid'</td>';
			tag += '<td rowspan="2">';
			tag += '<a href="#" class="tm-product-delete-link deleteCheck" data-value="' + item.ckSerialNumber + '">';
			tag += '<i class="far fa-trash-alt tm-product-delete-icon"></i>';
			tag += '</a>';
			tag += '</td>';
			tag += '</tr>';
			tag += '<tr>';
			tag += '<td>' + item.sName+ '</td>';
			tag += '<td>' + item.amount + '</td>';
			tag += '<td>' + item.unit + '</td>';
			tag += '<td>' + item.price + '</td>';
			tag += '<td>' + item.location + '</td>';
			tag += '<td>' + item.deDate + '</td>';
			tag += '<td>' + item.status + '</td>';
			tag += '</tr>'
			tag += '</tbody>';
						});
		}
		$("#stockListTable").html(tag);
		$(".del").on('click', stockdelete);
		$(".update").on('click', stockupdate);
	}

	//재료 상태 수정
	function stockupdate(stocknum) {
		if ($("#stockRegist").val() != '재고 등록')
			return;
		var stocknum = $(this).attr("data-value");

		var deltarget = $(this).parent().parent();

		$.ajax({
			type : 'GET',
			url : 'updateStockList',
			data : "stocknum=" + stocknum,
			success : function(resp) {
				var rDate = resp.rDate;
				var rRegistid = resp.rRegistid;
				var sDate = resp.sDate;
				var sRegistid = resp.sRegistid;
				var sName = resp.sName;
				var amount = resp.amount;
				var unit = resp.unit;
				var price = resp.price;
				var location = resp.location;
				var deDate = resp.deDate;
				var status = resp.status;

				stockno = resp.stocknum;

				$("#rDate").val(rDate);
				$("#rRegistid").val(rRegistid);
				$("#sDate").val(sDate);
				$("#sRegistid").val(sRegistid);
				$("#sName").val(sName);
				$("#amount").val(amount);
				$("#unit").val(unit);
				$("#price").val(price);
				$("#location").val(location);
				$("#deDate").val(deDate);
				$("#status").val(status);
			}
		});
	}
	// 재고 삭제
	function stockdelete(stocknum) {
		var stocknum = $(this).attr("data-value");
		var deltarget = $(this).parent().parent();

		$.ajax({
			type : 'GET',
			url : 'deleteStockList',
			data : "stocknum=" + stocknum,
			success : function(resp) {
				if (resp == 'success') {
					deltarget.remove();
				} else {
					alert("삭제 실패 하였습니다.");
				}
			}
		});
	}

	// 재고 등록 / 재고 상태 수정 처리
	function bookregist() {
		var rDate = $("#rDate").val();
		var rRegistid = $("#rRegistid").val();
		var sDate = $("#sDate").val();
		var sRegistid = $("#sRegistid").val();
		var sName = $("#sName").val();
		var amount = $("#amount").val();
		var unit = $("#unit").val();
		var price = $("#price").val();
		var location = $("#location").val();
		var deDate = $("#deDate").val();
		var status = $("#status").val();

		if (isNaN(price)) {
			alert("금액은 숫자로만 입력해 주세요");
			$("#price").select();
			return;
		}

		var stockCheck = {
			"rDate" : rDate,
			"rRegistid" : rRegistid,
			"sDate" : sDate,
			"sRegistid" : sRegistid,
			"sName" : sName,
			"amount" : amount,
			"unit" : unit,
			"price" : price,
			"location" : location,
			"deDate" : deDate,
			"status" : status
		};
		var url = '';
		if ($("#stockRegist").val() == '재고 등록') {
			url = 'regist';
		} else {
			stockCheck.stocknum = stockno
			url = 'updateStockList';
		}

		$.ajax({
			type : 'POST',
			url : url,
			data : stockCheck,
			success : function(resp) {
				$("#rDate").val("");
				$("#rRegistid").val("");
				$("#sDate").val("");
				$("#sRegistid").val("");
				$("#amount").val("");
				$("#unit").val("");
				$("#price").val("");
				$("#location").val("");
				$("#deDate").val("");
				$("#status").val("");

				init();
			}
		});
	}
</script>
</head>
<div class="page_content_even">
	<div class="page_container_full">
		<div class="info_page_container">
			<div class="info_detail_container">
				<div class="info_detail">
					<div class="col-md-16 mb-4 detail_info">
						<div class="blog d-block d-lg-flex">
							<div class="bg-image"
								style="background-image: url('resources/template/img/dishes_1.jpg');">
							</div>
							<div class="input-group mb-3">
								<form>
									<table id="regist">
										<tr>
											<th>입고일</th>
											<td><input id="rDate" type="text" name="rDate" />
										</tr>
										<tr>
											<th>재료명</th>
											<td colspan ="2"><input id="sName" type="text" name="sName" />
										</tr>
										<tr>
											<th>개수</th>
											<td><input id="amount" type="text" name="amount" />
											<td><select id="unit" name="utni">
													<option value="kg">kg</option>
													<option value="g">g</option>
													<option value="ko">個</option>
													<option value="l">l</option>
													<option value="ml">ml</option>
													<option value="bottle">本</option>
											</select></td>
										</tr>
										<tr>
											<th>위치</th>
											<td colspan ="2"><select id="location" name="location">
													<option value="frozen">冷凍</option>
													<option value="cold">冷蔵</option>
													<option value="storage">常温</option>
											</select></td>
										</tr>
										<tr>
											<th>폐기 예정일</th>
											<td colspan ="2"><input id="deDate" type="date" name="deDate" /></td>
										<tr>
											<th>위치</th>
											<td colspan ="2"><select id="location" name="location">
													<option value="stock">在庫</option>
													<option value="use">使用</option>
													<option value="disposal">廃棄</option>
											</select></td>
										</tr> 
									</table>
								</form>
							</div>

						</div>
					</div>


				</div>
				<div class="info_button_container">
					<button type="button" class="btn btn-primary btn-sm detail_btn">사용하기</button>
					<button type="button" class="btn btn-primary btn-sm detail_btn">폐기하기</button>
					<button type="button" class="btn btn-primary btn-sm detail_btn">다듬기</button>
				</div>
			</div>
			<div class="info_select_container">
				<div class="info_select frozen_storage">
					<a href="#" id="frozen_storageBtn"><span class="frozen">냉동</span></a>
				</div>
				<div class="info_select cold_storage">
					<a href="#" id="cold_storageBtn"><span class="cold">냉장</span></a>
				</div>
				<div class="info_select storage">
					<a href="#" id="storageBtn"><span class="storage">상온</span></a>
				</div>
			</div>
		</div>
	</div>
</div>