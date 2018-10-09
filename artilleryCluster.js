// const cluster = require('cluster');
// const http = require('http');
// const numCPUs = require('os').cpus().length;
const { exec } = require('child_process');

// if (cluster.isMaster) {
//   console.log(`Master ${process.pid} is running`);

//   // Fork workers.
//   for (let i = 0; i < numCPUs; i+= 1) {
//     cluster.fork();
//   }

//   cluster.on('exit', (worker, code, signal) => {
//     console.log(`worker ${worker.process.pid} died`);
//   });
// } else {
//   // Workers can share any TCP connection
//   // In this case it is an HTTP server
//   http.createServer((req, res) => {
//     res.writeHead(200);
//     res.end('hello world\n');
//   }).listen(8000);

//   console.log(`Worker ${process.pid} started`);
// }


const funcs = [];
for (let i = 0; i < 4; i += 1) {
  funcs.push(exec.bind(null, 'artillery run hello.yml'));
}

funcs.forEach(func => func());
