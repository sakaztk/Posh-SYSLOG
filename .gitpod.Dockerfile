FROM gitpod/workspace-full:latest

# Install dependencies and clean up
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        sudo \
        curl \
        wget \
        iputils-ping \
        iputils-tracepath \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
