BINARY = go-restful
GOARCH = amd64

IMAGE = go-restful
TAG = 1.0

GO_CMD = go
GO_BUILD = ${GO_CMD} build
LDFLAGS = 

all: image

clean:
		@if [ -r "$(BINARY)-$(GOOS)-$(GOARCH)" ]; then rm $(BINARY)-$(GOOS)-$(GOARCH); fi
		@if [ -n "$$(docker images -q $(IMAGE):$(TAG))" ]; then docker rmi $(IMAGE):$(TAG); fi


image: binary
		docker build \
					--build-arg GOOS=$(GOOS) \
					--build-arg GOARCH=$(GOARCH) \
					--build-arg BINARY=$(BINARY) \
					-t ${IMAGE}:${TAG} . --no-cache

binary: ${GOOS}

linux: 
		GOOS=$@ GOARCH=${GOARCH} ${GO_BUILD} ${LDFLAGS} -o ${BINARY}-$@-${GOARCH} .

darwin: 
		GOOS=$@ GOARCH=${GOARCH} ${GO_BUILD} ${LDFLAGS} -o ${BINARY}-$@-${GOARCH} .

windows: 
		GOOS=$@ GOARCH=${GOARCH} ${GO_BUILD} ${LDFLAGS} -o ${BINARY}-$@-${GOARCH} .

.PHONY: linux windows darwin
