BINARY = go-restful-swagger
GOARCH = amd64

GO_CMD = go
GO_BUILD = ${GO_CMD} build
LDFLAGS = 

linux: 
		GOOS=$@ GOARCH=${GOARCH} ${GO_BUILD} ${LDFLAGS} -o ${BINARY}-$@-${GOARCH} .

darwin: 
		GOOS=$@ GOARCH=${GOARCH} ${GO_BUILD} ${LDFLAGS} -o ${BINARY}-$@-${GOARCH} .

windows: 
		GOOS=$@ GOARCH=${GOARCH} ${GO_BUILD} ${LDFLAGS} -o ${BINARY}-$@-${GOARCH}.exe .