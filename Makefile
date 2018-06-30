vim: build
	docker run -i -t vim-docker nvim

build:
	docker build -t vim-docker .

shell: build
	docker run -i -t vim-docker bash
