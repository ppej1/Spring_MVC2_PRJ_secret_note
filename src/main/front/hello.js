import React from 'react';
import { Card, CardImg, CardText, CardBody,
  CardTitle, CardSubtitle, Button } from 'reactstrap';
import 'bootstrap/dist/css/bootstrap.min.css';

const hello = (props) => {
  return (
    <div>
      <Card height="20%">
        <CardImg top width="100%"  src="resources/img/Hello.jpg" alt="Nice to meet you!!" />
        <CardBody>
          <CardTitle><h1>환영합니다</h1></CardTitle>
          <CardSubtitle>귀하의 입사를 진심으로 축하드립니다.</CardSubtitle>
          <CardText>주의!꼭 읽어보세요</CardText>
        </CardBody>
      </Card>
    </div>
  );
};

export default hello;