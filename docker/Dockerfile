# develop
FROM golang:1.13.3-alpine AS develop
RUN apk update && apk upgrade && \
  apk add --no-cache \
  bash \
  git \
  openssh \
  gcc \
  libc-dev \
  make \
  tree \
  jq \
  build-base \
  && rm -rf /var/cache/apk/*
EXPOSE 8080

# build
FROM develop AS build
COPY ./ /go-webservice/
WORKDIR /go-webservice/
RUN make toLinux

# final
FROM alpine:latest
RUN apk update && apk upgrade \
  && apk add --no-cache ca-certificates \
  && rm -rf /var/cache/apk/*
COPY --from=build /go-webservice/go-webservice /bin/go-webservice
EXPOSE 8080
CMD ["./bin/go-webservice"]