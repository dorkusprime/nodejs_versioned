## Node.js 0.11.9 Dockerfile


This repository contains **Dockerfile** of [Node.js](http://nodejs.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dorkusprime/nodejs/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

The `master` branch here corresponds to the `lastest` tag in Dockerhub, which installs Nodejs@latest. Any other versions are under their own branches here, and correspond to their versioned tags in Dockerhub.

### Base Docker Image

* [dockerfile/python](http://dockerfile.github.io/#/python)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/dorkusprime/nodejs/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull dockerfile/nodejs:0.11.9`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dorkusprime/nodejs:latest" github.com/dorkusprime/nodejs_versioned`)


### Usage

    docker run -it --rm dorkusprime/nodejs:0.11.9

#### Run `node`

    docker run -it --rm dorkusprime/nodejs:0.11.9 node

#### Run `npm`

    docker run -it --rm dorkusprime/nodejs:0.11.9 npm
