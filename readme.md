<p align="center">
    <a href="https://www.isel.pt/en" target="_blank">
        <img width="50%" src="https://www.isel.pt/sites/default/files/001_imagens_isel/Logotipos/ISEL%202025/01_ISEL-Logotipo-RGB_Horizontal-Acronimo-900.png" alt="ISEL logo">
    </a>
</p>

# IoT course material (FIWARE)

This repository includes material to support FIWARE related concepts, lectured on the IoT master's course @ [ISEL](http://www.isel.pt), namely:

* [Orion Context Broker (CB)](https://fiware-orion.readthedocs.io/en/master/)
* [Orion-ld Context Broker (CB-LD)](https://github.com/FIWARE/context.Orion-LD/blob/develop/doc/manuals-ld/entities-and-attributes.md)
* CB/CB-LD consumer/client, written in Node.js
* Examples on how to use the CB/CB-LD

## Installation

The solution uses DOCKER to setup all the necessary software. **It is necessary to have the latest Docker engine for your operating system**. More information at [https://docs.docker.com/engine/install/](https://docs.docker.com/engine/install/).
To install other required software, please consult the specific README, inside each folder. Begin with the Consumer server.
The demo solution was tested on:

* Ubuntu 18.04 LTS, 22.04 LTS;
* MacOS Big Sur, MacOS Monterey, MacOS Ventura, MacOs Sonoma, MacOS Tahoe

Other operating systems may require additional steps.

Inside each folder you can find a specific readme, namely:

* [Consumer](consumer_server/readme.md) has a simplified version of a server consumer for the orion context broker. *You need to build the image to use all examples*.
* [Orion docker compose](orion/readme.md) that contains information about how to start a specific version of orion context broker. Please
* [Orion-ld docker compose](orion-ld/readme.md) that contains information about how to start a specific version of orion-ld context broker. *ld* stand for Linked data.

## License

[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://choosealicense.com/licenses/mit/)
![maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg)

[![Linux](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
[![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=apple&logoColor=white)](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=apple&logoColor=white)
[![docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)
