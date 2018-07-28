IMAGE ?= isocronut
DCMD = docker run --rm -it -v $$(pwd):/home -w /home $(IMAGE) python

docker.done:
	docker build . --tag $(IMAGE)
	touch docker.done

run-docker: docker.done 
	docker run --rm -it -v $$(pwd):/home -w /home $(IMAGE)  /bin/bash

test: docker.done
	$(DCMD) isocronut.py