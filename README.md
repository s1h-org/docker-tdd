# docker-tdd

Companion repository to the Docker TDD blog post

## How to use this repo

This repo contains the final `Dockerfile` and `goss.yaml` files created during the blog post in the `node_runtime` folder.

Test can either be run manually or automated.

### Manually

To build and test the image manually, run the `build_and_test.sh` script whenever you applied changes.

### nodemon

The repo also contains a [nodemon](https://nodemon.io/) setup to automatically rebuild the image and run tests on changes.

To start nodemon, run `npm i && npm start`

(A working node installation is required.)