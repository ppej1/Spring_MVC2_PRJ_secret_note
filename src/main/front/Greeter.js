import React, {
    Component
} from 'react'; // 설치한 react

import config from './config.json';



class Greeter extends Component {

    render() {

        return ( <div class = 'abc'>
            hello { config.greetText}

            </div>

        );

    }

}

export default Greeter