'use strict';

const express = require('express');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();
app.get('/', (req, res) => {
  //res.send('Hello world\n');

  var execFile = require('child_process').execFile
  // we build this with node-gyp above...
  var program = "./cappwrapper/build/Release/standalone";

  // from the browser
  var under = parseInt("20");
  var child = execFile(program, [under],
    function (error, stdout, stderr) {
      // The output of the prime_sieve function has 
      // one prime number per line.  
      // The last 3 lines are additional information, which we 
      // aren't using here - so I'm slicing the stdout array and 
      // mapping each line to an int.
      // You'll certainly want to be a bit more careful 
      // parsing your program's output!
      var primes = stdout.split("\n").slice(0, -3)
                         .map(function (line) {
                           return parseInt(line);
                         });

      res.setHeader('Content-Type', 'application/json');
      res.end(JSON.stringify({
        results: primes
      }));
      
  });

});

app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);


