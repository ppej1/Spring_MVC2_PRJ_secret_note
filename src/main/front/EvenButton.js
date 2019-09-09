import React from 'react';
import { Button } from 'reactstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

export default class EvenButton extends React.Component {
	render() {
	    return (
	      <div>
	        <Button color="primary" id="main_page">メーン</Button>
	        <Button color="secondary" id="check_page">チェック</Button>
	        <Button color="success" id="stock_page">在庫</Button>
	        <Button color="info" id="useds_page">使用</Button>
	        <Button color="warning" id="disposar_page">廃棄</Button>
	        <Button color="danger" id="Analysis_page">分析</Button>
	      </div>
	    );
	  }
}