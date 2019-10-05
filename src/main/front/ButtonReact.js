import React, {Component} from 'react';
export default class ButtonReact extends Component{
	render(){
		return(
				<div class="info_button_container">
				<button type="button" id="regist1" name="regist1" class="btn btn-primary btn-sm detail_btn">입고
					등록</button>
				<button type="button" id="cancel1" name="cancel1"
					class="btn btn-primary btn-sm detail_btn">취소</button>
			</div>
		);
	}
}