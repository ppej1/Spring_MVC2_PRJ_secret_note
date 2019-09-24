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
		$("#frozen_storageBtn").on('click', fSearch);
		$("#cold_storageBtn").on('click', cSearch);
		$("#storageBtn").on('click', sSearch);
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
		$.ajax({
			type : 'GET',
			url : 'fSearch',
			data : "forzen=" + location,
			success : output
		});
	}
	function cSearch() {
		$.ajax({
			type : 'GET',
			url : 'cSearch',
			data : "cold=" + location,
			success : output
		});
	}
	function sSearch() {
		$.ajax({
			type : 'GET',
			url : 'sSearch',
			data : "storage=" + location,
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
			tag += '<td>' + item.rdate + '</td>';
			tag += '<td>' + item.rRegistid + '</td>';
			tag += '<td class="tm-product-name" colspan="3">&nbsp;</td>';
			tag += '<td>' + item.sDate'</td>';
			tag += '<td>' + item.sRegistid'</td>';
			tag += '<td rowspan="2">&nbsp;</td>';
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
		$("#stock ").html(tag);
		$(".del").on('click', stockdelete);
		$(".update").on('click', stockupdate);
	}

	//재료 상태 수정
	function stockupdate(booknum) {
		if ($("#stockRegist").val() != '재고 등록')
			return;
		var stocknum = $(this).attr("data-value");

		var deltarget = $(this).parent().parent();

		$.ajax({
			type : 'GET',
			url : 'updatebook',
			data : "booknum=" + booknum,
			success : function(resp) {
				var rDate = resp.rDate;
				var fName = resp.fName;
				var amount = resp.amount;
				var location = resp.location;
				var deDate = resp.deDate;
				var status = resp.status;

				stockno = resp.stocknum;

				$("#rDate").val(rDate);
				$("#fName").val(fName);
				$("#amount").val(amount);
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
			url : 'deletestock',
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
		var shelfname = $("#rDate").val();
		var btitle = $("#fName").val();
		var writer = $("#amount").val();
		var publisher = $("#deDate").val();
		var purchasedate = $("#status").val();
		var price = $("#price").val();
		var bookreview = $("#bookreview").val();

		if (btitle.length == 0 || writer.length == 0 || publisher.length == 0) {
			alert("데이터를 정확히 입력해 주세요");
			return;
		}

		if (isNaN(price)) {
			alert("금액은 숫자로만 입력해 주세요");
			$("#price").select();
			return;
		}

		var mybookreview = {
			"shelfname" : shelfname,
			"btitle" : btitle,
			"writer" : writer,
			"publisher" : publisher,
			"purchasedate" : purchasedate,
			"price" : price,
			"bookreview" : bookreview
		};
		var url = '';
		if ($("#bookRegist").val() == '독서평 등록') {
			url = 'regist';
		} else {
			mybookreview.booknum = bookno
			url = 'updatebook';
		}

		$.ajax({
			type : 'POST',
			url : url,
			data : mybookreview,
			success : function(resp) {
				$("#shelfname").val("");
				$("#btitle").val("");
				$("#writer").val("");
				$("#publisher").val("");
				$("#purchasedate").val("");
				$("#price").val("");
				$("#bookreview").val("");

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
							<div class="text">
								<form>
									<table id="regist">
										<tr>
											<th>시리얼 넘버</th>
											<td><input id="SN" type="text" name="SN" />
										</tr>
										<tr>
											<th>입고일</th>
											<td><input id="rDate" type="text" name="rDate" />
										</tr>
										<tr>
											<th>재료명</th>
											<td><input id="fName" type="text" name="fName" />
										</tr>
										<tr>
											<th>개수</th>
											<td><input id="amount" type="text" name="amount" />
										</tr>
										<tr>
											<th>위치</th>
											<td><select id="location" name="location">
													<option value="냉동">frozen</option>
													<option value="냉장">cold</option>
													<option value="상온">sangon</option>
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
					<a href="#" id="frozen_storageBtn"><span>냉동</span></a>
				</div>
				<div class="info_select cold_storage">
					<a href="#" id="cold_storageBtn"><span>냉장</span></a>
				</div>
				<div class="info_select storage">
					<a href="#" id="storageBtn"><span>상온</span></a>
				</div>
			</div>
		</div>
	</div>
</div>