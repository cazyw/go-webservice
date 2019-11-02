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

To build

```
make toLinux
make toWindows

```

To test the running app

```
./go-webservice

curl http://localhost:8080
```

Resources:
https://www.callicoder.com/docker-golang-image-container-example/
