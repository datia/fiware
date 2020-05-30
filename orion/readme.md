# FIWARE Context Broker --- ORION

## Instalation

Please refer to the ORION docker installation [instructions](
https://github.com/telefonicaid/fiware-orion/tree/master/docker). We assume the "1. The Fastest Way" installation procedure.

**Do notice** the docker-compose.yml depends on the ORION client image. So you must create a docker image of the **FIWARE consumer_server** on your machine, before any attempt on running ORION.
Assuming a linux installation, after you run `sudo docker-compose up`, the Context Broker is running and listening on port **10026**.

Ona a browser, go the the URL 'http://localhost:8081/version'. You should see the text "FIWARE Consumers demo" in the console window.