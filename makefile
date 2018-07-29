IMAGE ?= isocronut
TAG := latest
PORT := 8888
DCMD := docker run --rm -it -u $(shell id -u):$(shell id -g) -v $(shell pwd):/home -w /home $(IMAGE):$(TAG)

# Build a docker image with `make isocronut-docker` or `make jupyter-docker`
docker-%:
	docker build . -t $* -f Dockerfile.$*

# Run a jupyter notebook server with `make jupyter-notebook`
# or run a jupyter lab server with `make jupyter-lab`
jupyter-%:
	(cd notebooks && docker run --rm \
		-u $(shell id -u):$(shell id -g) \
		-v $(shell pwd):/home \
		-w /home \-p $(PORT):$(PORT) \
		-it jupyter:latest jupyter $* )

# Run a docker image with `make run-isocronut` or `make run-jupyter`
run-%:
	-$(subst $(IMAGE):$(TAG), $*:$(TAG), $(DCMD)) /bin/bash

# Run a docker image as root with `make run-isocronut-root` or `make run-jupyter-root`
run-%-root:
	-$(subst -u $(shell id -u):$(shell id -g), -u root:root, \
	 $(subst $(IMAGE):$(TAG), $*:$(TAG), $(DCMD)) \
	 /bin/bash)

# Run a test of the isocronut package
test:
	$(DCMD) python isocronut.py
