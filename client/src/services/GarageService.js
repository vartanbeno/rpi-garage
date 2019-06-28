import axios from 'axios';
import config from '../config/config.json';

export default class GarageService {
    static toggleGarageDoor(password, whichDoor) {
        const url =
            config.host +
            (config.port ? `:${config.port}` : '') +
            (config.endpoint.startsWith('/')
                ? config.endpoint
                : `/${config.endpoint}`);
        return axios.post(url, { password, door: whichDoor });
    }
}
