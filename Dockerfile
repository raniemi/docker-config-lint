FROM golang:1.10.3-alpine3.8

ARG VERSION 

RUN apk add --update git bash openssh make bc

RUN mkdir -p /opt/config-lint

WORKDIR $GOPATH/src/github.com/stelligent/config-lint

# Building a released version from source
RUN git clone https://github.com/stelligent/config-lint.git ./ && \
    git checkout "v${VERSION}"

RUN make all
RUN ls -al
RUN ls $GOPATH/bin

ENV PATH="$GOPATH/src/github.com/stelligent/config-lint/.release:${PATH}"
RUN mkdir -p /data
WORKDIR /data

CMD ["config-lint"]
