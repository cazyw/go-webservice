# Go Web Service Project

## Development Commands

```
make dockerUp
make workApp
make dockerDown
make dockerFinal
make runApp
make stopApp
```

## Go Project Initialisation

Go modules for dependency management

```
// inside the container
go mod init github.com/cazyw/go-webservice

```

To build (inside the docker container)

```
make toLinux
make toWindows

```

To test the running app

```
./go-webservice or ./go-webservice.exe

curl http://localhost:8080 or visit the site
```

Resources:
https://www.callicoder.com/docker-golang-image-container-example/
