import React from 'react';
import { Card, CardImg, CardText, CardBody,
  CardTitle, CardSubtitle, Button } from 'reactstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

const hello = (props) => {
  return (
    <div>
      <Card>
        <CardImg top width="100%" src="resources/img/Hello.jpg" alt="Nice to meet you!!" />
        <CardBody>
          <CardTitle><h1>환영합니다</h1></CardTitle>
          <CardSubtitle>귀하의 입사를 진심으로 축하드립니다.</CardSubtitle>
          <CardText>당신은 나의 노예</CardText>
        </CardBody>
      </Card>
    </div>
  );
};

export default hello;