# FIWARE Consumer

To test the subscription feature of ORION, it is necessary to settle a server accessed using HTTP. You provide a simple Node.js program that will act a server. Feel free to change it to experiment other functionalities.

## Installation

Please refer to the Node.js installation [instructions](
https://nodejs.org/en/download/package-manager/) for your OS. If dependencies are missing, use `npm install` to fetch them.

Once you have Node.js installed ( including all necessary dependencies) you can run the server using `node consumer.js`. The server will be listening on port **8081**. Just check if everything is OK putting the following URL on the browser 'http://localhost:8081/version'. You should see the text "FIWARE Consumers demo".
Once the application is verified to run, you can build a docker image using

`docker build -t iot-isel/fiware-client .`

If everything works fine, you can run docker compose on the ORION context broker folder. **You should shutdown the server before build the image.**

[![nodejs](https://img.shields.io/badge/Node%20js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)](https://img.shields.io/badge/Node%20js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white)