vim: build
	docker run -it udalov/vim

build:
	docker build -t udalov/vim .

shell: build
	docker run -i --entrypoint=bash -t udalov/vim
