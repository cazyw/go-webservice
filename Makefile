toLinux :
	GOOS=linux GOARCH=amd64 go build -o go-webservice ./webapp/cmd/*.go

toWindows :
	GOOS=windows GOARCH=amd64 go build -o go-webservice.exe ./webapp/cmd/*.go

testInternal :
	make cleanTestCache
	go test ./... -cover -v

cleanTestCache :
	go clean -testcache

fmt :
	go fmt ./...

dockerUp :
	docker-compose up --build -d

dockerDown :
	docker-compose down -v --remove-orphans

workApp :
	docker exec -it go-webservice sh

dockerFinal :
	docker build -t go-final:latest -f ./docker/Dockerfile .

runApp :
	docker run -d -p 8080:8080 --name gofinal go-final

stopApp :
	docker container stop gofinal

dockerPrune :
	docker container prune -af
	docker image prune -af