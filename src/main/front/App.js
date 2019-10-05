import React, {Component} from 'react';
import Subject from './Subject';
import ButtonReact from './ButtonReact';

export default class App extends Component {
	constructor(props){
		super(props);
		this.state={
				mode:'welcome'
		}
	}
	render() {

		var _article, _buttonDiv = null;
		  if(this.state.mode ==='welcome'){
			  _article = <Subject></Subject>
			  _buttonDiv = <ButtonReact></ButtonReact>
		  }else if(this.state.mode === 'read'){
			  _article =<h1>dddd</h1>
			  _buttonDiv = <h1>bbbb</h1>
		  }
  		$(function(){
			alert("appel")
			this.setSTate({
				mode:'read'
			});
		});
    return (　

    	<div class="info_div">
    			{_article}
    			{_buttonDiv}
		</div>	
    );
  }
}