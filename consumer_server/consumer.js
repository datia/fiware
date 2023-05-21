//Copyright 2020-2022 Nuno Datia, ISEL
//
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//
//The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

var util = require('util')
var express = require('express');
var app = express();

//Helper Functions
function actuateTemperature(element)
{
   var temp = element.temperature.value;
   var action = (temp < 20 )? "Action:Raise": (temp > 23)?"Action:Low":"(no action)";
   return util.format("The sensor %s temperature is %s. %s",
                        element.id,element.temperature.value,action)
}

function actuatePressure(element)
{
   var press = element.pressure.value;
   return util.format("The room pressure reported by sensor %s is %s mmHg.",
                        element.id,element.pressure.value)
}

// Parse URL-encoded bodies (as sent by HTML forms)
app.use(express.urlencoded());

// Parse JSON bodies (as sent by API clients)
app.use(express.json());

// Just for a simple and quick test
app.get('/version', function (req, res) {
   	data = "FIWARE Consumers demo";
      console.log(data);
      res.end(data);
   
})

app.post('/temperature', function (req, res) {
      
      notification = req.body;
      r = util.format("FIWARE Consumers demo: POST /temperature: Subs %s",notification.subscriptionId);
      console.log(r)
      notification.data.forEach(element => console.log(actuateTemperature(element)));
      res.end(r);
   
})

app.post('/temperature/highalert', function (req, res) {
      
      notification = req.body;
      r = util.format("FIWARE Consumers demo: POST /temperature/highalert: Subs %s",notification.subscriptionId);
      console.log(r)
      notification.data.forEach(element => console.log(
                                          util.format("The sensor %s temperature is very high %s.",
                        element.id,element.temperature.value)
         ));
      res.end(r);
   
})

app.post('/pressure', function (req, res) {
   	notification = req.body;
      r = util.format("FIWARE Consumers demo: POST /pressure: Subs %s",notification.subscriptionId);
      console.log(r)
      notification.data.forEach(element => console.log(actuatePressure(element)));
      res.end(r);   
})

app.post('/subecho', function (req, res) {
      
   notification = req.body;
   r = util.format("FIWARE Consumers demo: POST /subecho: Subs %s",notification.subscriptionId);
   console.log(r)
   console.log(notification);
   res.end(r);

})

var server = app.listen(8081, function () {
   var host = server.address().address
   var port = server.address().port
   console.log("Consumers example app listening at http://%s:%s", host, port)
})