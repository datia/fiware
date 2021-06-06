# FIWARE Context Broker --- ORION-LD
[Orion-LD](https://github.com/FIWARE/context.Orion-LD) is a fork from the original [Orion](https://github.com/telefonicaid/fiware-orion) from Telefonica, that implements the Linked Data version of the NGSIv2, the [NGSI-LD](https://www.etsi.org/deliver/etsi_gs/CIM/001_099/009/01.01.01_60/gs_cim009v010101p.pdf) standard.

## Instalation

Please refer to the ORION-LD docker installation [instructions](
https://hub.docker.com/r/fiware/orion-ld/).

**Do notice** the docker-compose.yml depends on the ORION-LD client image. So you must create a docker image of the **FIWARE consumer_server** on your machine, before any attempt on running ORION. **Do not try to run both orion nad orion-ld containers, as they depend on the same compoonets, and use the same TCP ports**.
After you run `docker-compose up`, the Context Broker is running and listening on port **10026**. Sometimes the port **8081** is reported to be in use. Just check which process are still running in background.

Use a browser and:
- Go to the URL 'http://localhost:8081/version'. You should see the text "FIWARE Consumers demo" in the console window. *This means the consumer server is running.* 
- Go to 'http://localhost:10026/version'. You should receive a json response, meaning the *Orion context broker is running*.
- Go to 'http://localhost:1880'. You should see the NodeRed user interface.

Do note the container does not use persistence storage. **Once the container is stop, all changes made are gone!**