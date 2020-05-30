# FIWARE Consumer & server

To test the subscription feature of ORION it is necessary to settle a server acessed using HTTP. 

## Instalation

Please refer to the Node.js installation [instructions](
https://nodejs.org/en/download/package-manager/). 

Once you have Node.js installed you can run the server using `node consumer.js`. The server will be listening on port **8081**. Just check if everything is OK putting the following URL on the browser 'http://localhost:8081/version'. You should see the text "FIWARE Consumers demo".
Once the application is verified to run, you can build a docker image using 
`docker build -t iot-isel/fiware-client .`.

If everything works fine, you can run docker compose on the ORION context broker folder.