OWNER := fabianlee
PROJECT := terraform-libvirt-provider
VERSION := 1.0.0
OPV := $(OWNER)/$(PROJECT):$(VERSION)

## builds docker image
docker-build:
	## builds terrform binary using golang
	sudo docker build -f Dockerfile -t $(OPV) .
	## copies statically linked binary out of container and into current directory
	sudo docker run --rm -v $(shell pwd):/tmp $(OPV) /bin/sh -c "cp /usr/local/bin/terraform /tmp/."

## cleans docker image
clean:
	sudo docker image rm $(OPV) | true

## runs container in foreground, using default args
docker-test:
	sudo docker run -it --rm $(OPV)

## runs container in foreground, override entrypoint to use use shell
docker-test-cli:
	sudo docker run -it --rm --entrypoint "/bin/sh" $(OPV)

## pushes to docker hub
docker-push:
	sudo docker push $(OPV)

