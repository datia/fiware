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

// Just for simply and quick test
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


var server = app.listen(8081, function () {
   var host = server.address().address
   var port = server.address().port
   console.log("Consumers example app listening at http://%s:%s", host, port)
})