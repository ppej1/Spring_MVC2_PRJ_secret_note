<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style>
	select {
		font-family: inherit; /* 폰트 상속 */ 
		background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
		border: 1px solid #999; border-radius: 0px; /* iOS 둥근모서리 제거 */ 
		-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
		-moz-appearance: none; 
		appearance: none;
		}
</style>

<div class="page_content_even">
    <div class="page_container_full" style="text-align: center;">
  		<h1>Analysis</h1>
	  		<select id="yearChart" name="yearChart" style="width: 100px;">
				<option value="2019" selected="selected">2019</option>
			  	<option value="2018">2018</option>
			 	<option value="2017">2017</option>
			</select>
			<select id="selectType" name="selectType" style="width: 250px;">
	
			</select>
  		<div id="AnalysisChart"></div>
    </div>
</div>

