vim: build
	docker-term-run udalov/vim

build:
	docker build -t udalov/vim .

shell: build
	docker run -i --entrypoint=bash -t udalov/vim
