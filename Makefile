all: gitmon

gitmon: gitmon.go
	CGO_ENABLED=0 go build -ldflags '-s -w -extldflags "-static"' -o gitmon gitmon.go

lint:
	golangci-lint run

test:
	go test ./...

clean:
	rm -rf gitmon

