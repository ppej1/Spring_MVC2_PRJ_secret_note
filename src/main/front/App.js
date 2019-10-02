import React, {Component} from 'react';
import Subject from './Subject';
import ButtonReact from './ButtonReact';
export default class App extends Component {
  render() {
    return (　
    	<div class="info_div">
			<Subject></Subject>
			<ButtonReact></ButtonReact>
		</div>	
    );
  }
}