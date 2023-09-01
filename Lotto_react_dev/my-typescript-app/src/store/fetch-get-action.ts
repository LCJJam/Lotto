import axios from 'axios';

const GET = (url: string) => {
  return axios.get( url );
};


export { GET };