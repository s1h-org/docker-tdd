ARG IMAGE_TAG=10.4-slim
FROM debian:$IMAGE_TAG

SHELL [ "/bin/bash", "-c" ]

RUN groupadd --gid 1000 node && useradd --uid 1000 --gid node --shell /bin/bash --create-home node

RUN apt-get update \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

USER node:node
WORKDIR /home/node

ARG NODE_VERSION=12.18.0
ENV NODE_VERSION $NODE_VERSION
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash && chmod +x $HOME/.nvm/nvm.sh && . $HOME/.nvm/nvm.sh && nvm install $NODE_VERSION && nvm alias default $NODE_VERSION && nvm use default

COPY --chown=node:node entrypoint.sh /usr/local/bin

ENTRYPOINT [ "entrypoint.sh" ]
CMD [ "node" ]