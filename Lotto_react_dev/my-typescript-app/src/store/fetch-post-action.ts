import axios from 'axios';

const POST = (url: string, data?: {}) => {

  return axios.post(
    url ,
    data ,
    {
        headers: { 'Content-Type': 'application/json;'}
    }

    );
};


export { POST };
