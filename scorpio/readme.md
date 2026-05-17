# FIWARE Context Broker --- SCORPIO

## Instalation

Please refer to the Scorpio docker installation [instructions](
https://scorpio.readthedocs.io/en/latest/). We assume the "almost all in one" installation procedure.

```
docker compose up
```

Use a browser and:

- Go to 'http://localhost:9090/q/info'. You should receive a json response, meaning the *Scorpio context broker is running*;
- Go to 'http://localhost:9090/q/health' to get the service health information;