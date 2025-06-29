@echo off
setlocal
set GOOS=linux
set GOARCH=arm64
set CGO_ENABLED=1
set CC=zigcc -target aarch64-linux-musl
set CXX=zigcpp -target aarch64-linux-musl

go build -v -o bin/smartping src/smartping.go
endlocal
