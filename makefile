IMAGE ?= isocronut

docker: 
	docker build . --tag $(IMAGE)

run-docker: 
	docker run --rm -it -v $$(pwd):/work $(IMAGE) /bin/sh