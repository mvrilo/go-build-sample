docker-build:
	docker run --rm -it -v "$(shell pwd):/app" golang:alpine /bin/sh -c "apk add -U --no-cache make; cd /app; make build-app"

build-app:
	go build -o example main.go
