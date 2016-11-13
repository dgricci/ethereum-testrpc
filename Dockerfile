# Fast Ethereum RPC client for testing and development
FROM dgricci/nodejs:0.0.1
MAINTAINER Didier Richard <didier.richard@ign.fr>

# jessie : python 2.7
# python 2.7 only is supported by node-gyp (needed by testrpc)
RUN \
    apt-get update \
    && \
    apt-get install -qy  --no-install-recommends \
        make \
        gcc \
        g++ \
        python=2.7\* \
    && \
    rm -rf /var/lib/apt/lists/*

RUN \
    npm install -g ethereumjs-testrpc

RUN \
    apt-get purge -y --auto-remove \
        make \
        gcc \
        g++

