# FIWARE Context Broker --- ORION

## Instalation

Please refer to the ORION docker installation [instructions](
https://github.com/telefonicaid/fiware-orion/tree/master/docker). We assume the "1. The Fastest Way" installation procedure.

**Do notice** the docker-compose.yml depends on the ORION client image. So you must create a docker image of the **FIWARE consumer_server** on your machine, before any attempt on running ORION. 
Assuming a linux installation, after you run `sudo docker-compose up`, the Context Broker is running and listening on port **10026**. Sometimes the port **8081** is reported to be in use. Just check which process are still running in background.

Use a browser and:
- Go to the URL 'http://localhost:8081/version'. You should see the text "FIWARE Consumers demo" in the console window. *This means the consumer server is running.* 
- Go to 'http://localhost:10026/version'. You should receive a json response, meaning the *Orion context broker is running*.
- Go to 'http://localhost:1880'. You should see the NodeRed Uaer interface.

Do note the container does not use persistence storage. **Once the container is stop, all changes made are gone!**