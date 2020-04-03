const protocol = 'http';
const server = 'localhost';
const port = 8080;
const protocolServerAndPort = protocol + '://' + server + ':' + port;
//still has to be set separately in vue.config.js as it's apparently impossible to import values there
const projectRoot = '/Lyrics';
const home = protocolServerAndPort + projectRoot;
const requestRoute = '/api';
const requestBase = home + requestRoute;

const urls = {
	projectRoot: projectRoot,
	requestBase: requestBase
};

export default urls;