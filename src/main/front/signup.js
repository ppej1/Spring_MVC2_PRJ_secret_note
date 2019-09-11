import React from 'react';
import { Button, Form, FormGroup, Label, Input, FormText } from 'reactstrap';
import { Table } from 'reactstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

export default class signup extends React.Component {
	
	constructor(props) {
	    super(props);
	    this.state = {
	    };
	  };

  render() {
    return (
    		
    	<div class="page_container">
	        <Form action="signup" method="POST" id="signup_form">
	        <FormGroup>
	          <Label for="userid">아이디</Label>
	          <Input type="text" name="userid" id="userid" placeholder="write userid" />
	        </FormGroup>
	        <FormGroup>
	          <Label for="userpwd">비밀번호</Label>
	          <Input type="password" name="userpwd" id="userpwd" placeholder="write userpwd" />
	        </FormGroup>
	          <FormGroup>
		    	<Label for="username">이름</Label>
		        <Input type="text" name="username" id="username" placeholder="write username" />
		    </FormGroup>
		    <FormGroup>
		        <Label for="rank">직급</Label>
		        <Input type="select" name="rank" id="rank">
		        	<option>Boss</option>
		            <option>Manager</option>
		            <option>Staff</option>
		        </Input>
		    </FormGroup>
	        <FormGroup>
		        <Label for="email">Email</Label>
		        <Input type="email" name="email" id="email" placeholder="write email" />
	        </FormGroup>
	        <FormGroup>
	          <Label for="phone">Phone</Label>
	          <Input type="text" name="phone" id="phone" placeholder="write phone" />
	        </FormGroup>
	          <FormGroup check>
	          <Table>
	            <tr>
	  	          <th scope="row">약관 1.</th>
	            </tr>
	            <tr>
	  	          <td>
	  		          어쩌구저쩌구 1.
	  		          <Label check>
	  				      <Input type="checkbox" id="checkbox1" />{'동의하십니까?'}
	  			      </Label>
	  		      </td>
	  		  </tr>
	            <tr>
	            	  <th scope="row">약관 2.</th>
	            </tr>
	            <tr>
	  	          <td>
	  		          어쩌구저쩌구 2.
	  		          <Label check>
	  				      <Input type="checkbox" id="checkbox2" /> {'동의하십니까?'}
	  			      </Label>
	  		      </td>
	  	      </tr>
	            <tr>
	        	  	  <th scope="row">약관 3.</th>
	        	  </tr>
	        	  <tr>
	  	      	  <td>
	  		          어쩌구저쩌구 3.
	  		          <Label check>
	  				      <Input type="checkbox" id="checkbox3" /> {'동의하십니까?'}
	  			      </Label>
	  		      </td>
	  	      </tr>
	        </Table>
	          </FormGroup>
	          <Input type="submit" id="submitBtn" value="회원가입" />
	        </Form>
  			<Button color="danger" id="cancelBtn">cancel</Button>{' '}
          </div>
    );
  }
}